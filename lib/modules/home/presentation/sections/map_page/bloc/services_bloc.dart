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
    debugPrint('ServiceBloc:: constructor');
    on<_GetServices>(_onGetServices);
    on<_GetServiceCategories>(_onGetServiceCategories);
    on<_SetMyLocation>(_onSetMyLocation);
    on<_ShowModal>((event, emit) {
      emit(state.copyWith(showModal: true, selectedServiceId: event.serviceId));
    });

    _loadIcon();

    // Автоматический запуск загрузки сервисов при создании блока
    //add(const ServicesEvent.getServices());
    Future.microtask(() {
      debugPrint('ServiceBloc:: Microtask: add getServices categories');
      add(const ServicesEvent.getServiceCategories());
    });
  }

  late BitmapDescriptor _markerIcon;
  late BitmapDescriptor _markerIconNotFt;
  late List<RegionModel> _regions;

  GoogleMapController? _mapController;

  void _loadIcon() async {
    _markerIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.serviceFtSmall);
    _markerIconNotFt = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.serviceSmall);
  }

  FutureOr<void> _onGetServiceCategories(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    debugPrint("ServiceBloc:: Run get service categories");
    emit(state.copyWith(status: ActionStatus.inProcess));

    final categories = await getServicesUseCase.getServiceCategories();
    final regions = await getServicesUseCase.getRegions();
    final allServices = await getServicesUseCase.getServices();

    if (categories.isRight && regions.isRight && allServices.isRight) {
      _regions = regions.right;
      debugPrint(
          "ServiceBloc:: Success get car_services categories ${categories.right.length}");
      debugPrint(
          "ServiceBloc::Success get services regions ${regions.right.length}");
      debugPrint(
          "ServiceBloc::Success get services regions ${allServices.right.length}");
      int currentServiceCat =
          categories.right.length > 1 ? categories.right.first.id : 0;
      debugPrint("ServiceBloc:: current categoryId=$currentServiceCat");
      emit(state.copyWith(
          status: ActionStatus.isSuccess,
          serviceCategories: categories.right,
          currentCatId: currentServiceCat,
          allServices: allServices.right));
      //add(ServicesEvent.getServices(catId: currentServiceCat));
    } else {
      debugPrint("ServiceBloc:: Failure get services cat's");
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
      debugPrint(
          "ServiceBloc:: Run get services cat_id=$catId and regionId=${event.region?.id}");
      emit(state.copyWith(
        loadCarServices: true,
        currentCatId: catId,
        currentRegion: event.region,
      ));

      String params = "?categoria=$catId";
      if (event.region != null) params = "$params&region=${event.region!.id}";

      final result = await getServicesUseCase(params);

      if (result.isRight) {
        debugPrint(
            "ServiceBloc:: Success get services length = ${result.right.length}");
        emit(state.copyWith(
            loadCarServices: false,
            markers: Set<Marker>.of(
                result.right.map((service) => service.toMarker(service.featured ? _markerIcon : _markerIconNotFt, () {
                      add(ServicesEvent.showModal(service.id));
                    }))),
            currentCatId: catId,
            currentRegion: event.region));
      } else {
        debugPrint("ServiceBloc:: Failure get services");
        emit(state.copyWith(
            loadCarServices: false,
            status: ActionStatus.isFailure,
            currentCatId: catId,
            currentRegion: event.region));
      }
    }
  }

  FutureOr<void> _onSetMyLocation(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    if (event is _SetMyLocation) {
      RegionModel? regionModel;
      /*if (event.latLng != null) {
        final placemark = await getInfoByLocation(event.latLng!);

        if (placemark?.locality != null) {
          regionModel = _regions.firstWhereOrNull(
              (region) => region.name.contains(placemark!.locality!) || region.name.contains(placemark!.subAdministrativeArea!)
          );
          debugPrint(
              "ServiceBloc:: founded region model is ${regionModel?.toString()}");
        } else {
          debugPrint(
              "ServiceBloc:: placemark info by current location not found");
        }
      } else {
        debugPrint("ServiceBloc:: my location is  null");
      }*/

      _mapController = event.mapController;

      emit(state.copyWith(
          currentRegion: regionModel, currentLocation: event.latLng));

      add(ServicesEvent.getServices(
          catId: state.currentCatId,
          region: regionModel,
          serviceIds: Set<int>.of(
              state.selectedServices.map((service) => service.id))));
    }
  }

  @override
  Future<void> close() {
    try {
      _mapController?.dispose();
    } catch(e) {
      debugPrint(e.toString());
    }
    return super.close();
  }
}
