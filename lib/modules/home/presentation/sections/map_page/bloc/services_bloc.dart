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
    on<_MapMoved>(_onMapMoved);
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

  late BitmapDescriptor _markerIconOpen;
  late BitmapDescriptor _markerIconClosed;
  late BitmapDescriptor _markerIconNotFt;
  late BitmapDescriptor _iconMyLocation;
  late List<RegionModel> _regions;
  Marker? _myLocationMarker; // Добавляю поле для маркера местоположения

  GoogleMapController? _mapController;

  void _loadIcon() async {
    _markerIconOpen = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.serviceFtOpen);
    _markerIconClosed = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.serviceFtClosed);
    _markerIconNotFt = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.serviceNotFt);
    _iconMyLocation = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.myLocationIcon);
  }

  FutureOr<void> _onGetServiceCategories(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    debugPrint("ServiceBloc:: Run get service categories");
    emit(state.copyWith(status: ActionStatus.inProcess));

    final categories = await getServicesUseCase.getServiceCategories();
    //final regions = await getServicesUseCase.getRegions();
    final allServices = await getServicesUseCase.getServices();

    if (categories.isRight /*&& regions.isRight*/ && allServices.isRight) {
      //_regions = regions.right;
      debugPrint(
          "ServiceBloc:: Success get car_services categories ${categories.right.length}");
      //debugPrint("ServiceBloc::Success get services regions ${regions.right.length}");
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

  final List<CarServiceEntity> _allPoints =
      []; // Все точки, загруженные заранее

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
        _allPoints.clear();
        _allPoints.addAll(result.right);

        /*emit(state.copyWith(
            loadCarServices: false,
            markers: Set<Marker>.of(
                result.right.map((service) => service.toMarker(service.featured ? _markerIcon : _markerIconNotFt, () {
                      add(ServicesEvent.showModal(service.id));
                    }))),
            currentCatId: catId,
            currentRegion: event.region));*/
        emit(state.copyWith(
            loadCarServices: false,
            currentCatId: catId,
            currentRegion: event.region));
        await _loadPointsForRegion(state.visibleRegion!, emit);
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
      final initialPosition = await _mapController!.getVisibleRegion();

      // Создаём и сохраняем маркер местоположения
      if (event.latLng != null) {
        _myLocationMarker = Marker(
          markerId: const MarkerId('my_location'),
          position: event.latLng!,
          icon: _iconMyLocation,
          infoWindow: const InfoWindow(title: 'Моё местоположение'),
        );
      }

      emit(state.copyWith(
          currentRegion: regionModel,
          currentLocation: event.latLng,
          visibleRegion: initialPosition));

      add(ServicesEvent.getServices(
          catId: state.currentCatId,
          region: regionModel,
          serviceIds: Set<int>.of(
              state.selectedServices.map((service) => service.id))));
    }
  }

  Future<void> _onMapMoved(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    if (event is _MapMoved) {
      await _loadPointsForRegion(event.visibleRegion, emit);
    }
  }

  // Метод для объединения всех маркеров
  Set<Marker> _getAllMarkers(Set<Marker> serviceMarkers) {
    final allMarkers = <Marker>{...serviceMarkers};

    // Всегда добавляем маркер местоположения
    if (_myLocationMarker != null) {
      allMarkers.add(_myLocationMarker!);
    }

    return allMarkers;
  }

  Future<void> _loadPointsForRegion(
      LatLngBounds region, Emitter<ServicesState> emit) async {
    try {
      // Фильтруем точки для видимой области
      final zoom = await _mapController?.getZoomLevel() ?? 12.0;
      // Чем больше зум (ближе карта), тем больше маркеров
      final limitZ = zoom > 18 ? 30 :
        zoom > 15 ? 60 :
        zoom > 12 ? 120 :
        zoom > 10 ? 200 :
        zoom > 8 ? 250 :
        zoom > 5 ? 300 :
        450;
      debugPrint("ServiceBloc:: zoom level=$zoom limitZ=$limitZ");

      final visiblePoints = _getPointsFromRegion(
        allPoints: _allPoints,
        region: region,
        padding: 0.1, // 10% отступ за границы видимой области
        limit: limitZ, // Не более 100 точек
      );

      debugPrint(
          "ServiceBloc:: allPoints size = ${_allPoints.length}, visible points size =${visiblePoints.length}");

      // Создаем маркеры
      final markers = await Future.wait(visiblePoints.map((service) async {
        BitmapDescriptor icon;
        if (service.featured) {
          icon = service.status.contains("closed")
              ? _markerIconClosed
              : _markerIconOpen;
        } else {
          icon = _markerIconNotFt;
        }

        return service.toMarker(icon, () {
          add(ServicesEvent.showModal(service.id));
        });
      }));

      emit(state.copyWith(
          loadCarServices: false,
          showModal: false,
          markers: _getAllMarkers(
              markers.toSet()) // Используем метод для объединения маркеров
          ));
    } catch (e) {
      emit(state.copyWith(
          loadCarServices: false, status: ActionStatus.isFailure));
    }
  }

  @override
  Future<void> close() {
    try {
      _mapController?.dispose();
    } catch (e) {
      debugPrint(e.toString());
    }
    return super.close();
  }

  List<CarServiceEntity> _getPointsFromRegion({
    required List<CarServiceEntity> allPoints,
    required LatLngBounds region,
    double padding = 0.0, // Дополнительный отступ за границы видимой области
    int? limit, // Максимальное количество точек для возврата
  }) {
    final southwest = region.southwest;
    final northeast = region.northeast;

    // Учитываем padding
    final minLat = southwest.latitude - padding;
    final maxLat = northeast.latitude + padding;
    final minLng = southwest.longitude - padding;
    final maxLng = northeast.longitude + padding;

    var result = allPoints.where((point) {
      return point.location.latitude >= minLat &&
          point.location.latitude <= maxLat &&
          point.location.longitude >= minLng &&
          point.location.longitude <= maxLng;
    }).toList();

    // Применяем лимит, если указан
    if (limit != null && result.length > limit) {
      result = result.sublist(0, limit);
    }

    return result;
  }
}
