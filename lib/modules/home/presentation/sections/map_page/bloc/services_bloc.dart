import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/modules/home/data/model/region.dart';
import 'package:pits_app/modules/home/data/model/service.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/domain/entity/service_category.dart';
import 'package:pits_app/modules/home/domain/usecase/get_services.dart';
import 'package:pits_app/utils/action_status.dart';
import 'package:collection/collection.dart';
import '../../../../../../assets/constants/app_images.dart';
import '../../../../../../utils/functions.dart';

part 'services_event.dart';

part 'services_state.dart';

part 'services_bloc.freezed.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final GetServicesUseCase getServicesUseCase;

  ServicesBloc(this.getServicesUseCase) : super(const ServicesState()) {
    debugPrint('ServicesBloc constructor');
    on<_GetServices>(_onGetServices);
    on<_GetServiceCategories>(_onGetServiceCategories);
    on<_SetMyLocation>(_onSetMyLocation);

    _loadIcon();

    // Автоматический запуск загрузки сервисов при создании блока
    //add(const ServicesEvent.getServices());
    Future.microtask(() {
      debugPrint('Microtask: add getServices categories');
      add(const ServicesEvent.getServiceCategories());
    });
  }

  late BitmapDescriptor _markerIcon;
  late List<RegionModel> _regions;

  void _loadIcon() async {
    _markerIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.wrenchLocation);
  }

  FutureOr<void> _onGetServiceCategories(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    debugPrint("Run get services categories");
    emit(state.copyWith(status: ActionStatus.inProcess));

    final categories = await getServicesUseCase.getServiceCategories();
    final regions = await getServicesUseCase.getRegions();

    if (categories.isRight && regions.isRight) {
      _regions = regions.right;
      debugPrint("Success get services categories ${categories.right.length}");
      debugPrint("Success get services regions ${regions.right.length}");
      int currentServiceCat =
        categories.right.length > 1 ? categories.right.first.id : 0;
      emit(
       state.copyWith(
          status: ActionStatus.isSuccess,
          serviceCategories: categories.right,
          currentCatId: currentServiceCat
       )
      );
      //add(ServicesEvent.getServices(catId: currentServiceCat));
    } else {
      debugPrint("Failure get services cat's");
      emit(state.copyWith(status: ActionStatus.isFailure));
    }
  }

  /*FutureOr<void> _onGetServices(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    debugPrint("Run get services");
    emit(state.copyWith(status: ActionStatus.inProcess));

    final result = await getServicesUseCase('');
    if (result.isRight) {
      debugPrint("Success get services  [33m");
      int currentCatId = 1;
      final services = result.right;
      const batchSize = 200;
      Set<Marker> allMarkers = {};
      for (int i = 0; i < services.length; i += batchSize) {
        final batch = services.skip(i).take(batchSize);
        allMarkers
            .addAll(batch.map((service) => service.toMarker(_markerIcon)));
        emit(
          state.copyWith(
            status: ActionStatus.isSuccess,
            markers: Set<Marker>.from(allMarkers),
          ),
        );
        await Future.delayed(const Duration(milliseconds: 50));
      }
    } else {
      debugPrint("Failure get services");
      emit(state.copyWith(status: ActionStatus.isFailure));
    }
  }*/

  FutureOr<void> _onGetServices(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    if (event is _GetServices) {
      final catId = event.catId;
      debugPrint("ServiceBloc:: Run get services cat_id=$catId and regionId=${event.region?.id}");
      emit(state.copyWith(
        loadCarServices: true,
        currentCatId: catId,
        currentRegion: event.region,
      ));

      String params = "?categoria=$catId";
      if(event.region!=null) params = "$params&region=${event.region!.id}";

      final result = await getServicesUseCase(params);

      if (result.isRight) {
        debugPrint("Success get services length = ${result.right.length}");
        emit(state.copyWith(
          loadCarServices: false,
          markers: Set<Marker>.of(
              result.right.map((service) => service.toMarker(_markerIcon))),
          currentCatId: catId,
          currentRegion: event.region
        ));
      } else {
        debugPrint("Failure get services");
        emit(state.copyWith(
          loadCarServices: false,
          status: ActionStatus.isFailure,
          currentCatId: catId,
          currentRegion: event.region
        ));
      }
    }
  }



  FutureOr<void> _onSetMyLocation(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    if (event is _SetMyLocation) {
      RegionModel? regionModel;
      if(event.latLng!=null) {
        debugPrint("ServiceBloc:: my location is  null");
        final placemark = await getInfoByLocation(event.latLng!);

        if(placemark?.locality!=null) {
          regionModel = _regions.firstWhereOrNull((region) => region.name.contains(placemark!.locality!));
          debugPrint("ServiceBloc:: founded region model is ${regionModel?.toString()}");
        } else {
          debugPrint("ServiceBloc:: placemark info by current location not found");
        }
      } else {
        debugPrint("ServiceBloc:: my location is  null");
      }

      emit(state.copyWith(
        currentRegion: regionModel,
        currentLocation: event.latLng
      ));

      add(ServicesEvent.getServices(
          catId: state.currentCatId,
          region: regionModel,
          serviceIds: Set<int>.of(state.selectedServices.map((service) => service.id))
      ));
    }
  }
}
