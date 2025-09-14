import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
/*import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart'
    as cluster_manager;*/
/*import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart'
    as cluster_manager;*/
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/widgets/alarm_screen.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/services_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/type_selector.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/widgets/services_dropdown.dart';
import 'package:pits_app/utils/action_status.dart';
import 'package:pits_app/utils/functions.dart';

import '../../../../../assets/constants/app_icons.dart';
import '../../../../../assets/constants/app_images.dart';
import '../../../../../base/custom_aler_dialog.dart';
import '../../../domain/usecase/get_single_service.dart';
import 'bloc/single/service_single_bloc.dart';
import 'part/info_window.dart';

// ВАЖНО: Оборачивайте MapScreen в MultiBlocProvider снаружи!
class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;

  // Кластер, который был использован последним.
  Cluster? lastCluster;

  late ServiceSingleBloc serviceSingleBloc;

  @override
  void initState() {
    serviceSingleBloc = ServiceSingleBloc(getSingle: GetServiceSingleUseCase());
    super.initState();
  }

  final ClusterManager _clusterManager = ClusterManager(
    clusterManagerId:
        const ClusterManagerId(CarServiceEntity.mainClusterManagerId),
    onClusterTap: (Cluster cluster) => {},
  );

  _setMyLocation(GoogleMapController controller, ServicesBloc bloc) async {
    /*String regionId = await getRegionId(_kMadrid.target.latitude, _kMadrid.target.longitude);
    debugPrint("current region id = $regionId");*/

    getCurrentLocation().then((point) {
      debugPrint("current location success: ${point.toString()}");
      final latLng = LatLng(point.latitude, point.longitude);
      controller.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: latLng, zoom: _defaultZoom),
      ));
      bloc.add(ServicesEvent.setMyLocation(latLng, controller));
    }, onError: (e) {
      debugPrint("Unable get location: ${e.toString()}");
      bloc.add(ServicesEvent.setMyLocation(null, controller));
    }); //.catchError(handleError);
  }

  static const CameraPosition _kMadrid = CameraPosition(
    target: LatLng(40.416775, -3.703790),
    zoom: _defaultZoom,
  );

  static const double _defaultZoom = 12.4746;

  /*void _loadIcon() async {
    _markerIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.wrenchLocation);
  }*/

  OverlayEntry? _infoWindowOverlay;

  void _hideInfoWindow() {
    if (_infoWindowOverlay != null) {
      _infoWindowOverlay!.remove();
      _infoWindowOverlay = null;
    }
  }

  Future<void> moveCameraWithXOffset(LatLng targetPoint, double xOffsetPixels) async {

    // 1. Get the screen coordinate of the target point
    ScreenCoordinate screenCoordinate = await _mapController.getScreenCoordinate(targetPoint);

    // 2. Apply the X-offset to the screen coordinate
    ScreenCoordinate newScreenCoordinate = ScreenCoordinate(
      x: screenCoordinate.x + xOffsetPixels.toInt(),
      y: screenCoordinate.y, // Y-coordinate remains the same
    );

    // 3. Convert the new screen coordinate back to LatLng
    LatLng newTargetLatLng = await _mapController.getLatLng(newScreenCoordinate);

    // 4. Move the camera to the new target LatLng
    _mapController.animateCamera(CameraUpdate.newLatLng(newTargetLatLng), duration: const Duration(milliseconds: 300));
  }

  void _showInfoWindow(LatLng? point, ServiceSingleBloc bloc) {
    debugPrint("_showInfoWindow: point=$point");
    // Проверяем, что карта инициализирована и точка не null
    if (point == null) {
      debugPrint("Map controller not ready or point is null");
      return;
    }

    moveCameraWithXOffset(point, 180);


    // Скрываем предыдущее окно
    _hideInfoWindow();

    // Получаем позицию для отображения
    _mapController.getScreenCoordinate(point).then((screenPosition) {
      debugPrint("_showInfoWindow: x=${screenPosition.x} y=${screenPosition.y}");

      if (!mounted) return;

      // Получаем размеры экрана и учитываем padding
      final mediaQuery = MediaQuery.of(context);
      final screenWidth = mediaQuery.size.width;
      final screenHeight = mediaQuery.size.height;
      final paddingTop = mediaQuery.padding.top;
      final paddingBottom = mediaQuery.padding.bottom;


      // Позиционируем окно над маркером
      double left = screenPosition.x.toDouble() - (ServiceInfoWindow.infoWidth / 2);
      //double top = screenPosition.y.toDouble() - windowHeight - 40; // Отступ сверху
      double top = screenPosition.y - ServiceInfoWindow.infoHeight - 40;
      debugPrint("_showInfoWindow: top=$top left=$left");

      // Корректируем позицию, если окно выходит за границы экрана
      if (left < 0) {
        left = 8; // Минимальный отступ от левого края
      } else if (left + ServiceInfoWindow.infoWidth > screenWidth) {
        left = screenWidth - ServiceInfoWindow.infoWidth - 8; // Минимальный отступ от правого края
      }

      if (top < paddingTop) {
        // Если не помещается сверху, показываем снизу от маркера
        top = screenPosition.y.toDouble() + 40;
      } else if (top + ServiceInfoWindow.infoHeight > screenHeight - paddingBottom) {
        // Если не помещается снизу, показываем сверху с максимальным отступом
        top = paddingTop + 8;
      }


      setState(() {
        // Создаем overlay
        _infoWindowOverlay = OverlayEntry(
          builder: (context) => Positioned(
            left: left,
            top: 300,
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(10),
              child: ServiceInfoWindow(serviceSingleBloc: bloc),
            ),
          ),
        );

        // Добавляем overlay
        Overlay.of(context).insert(_infoWindowOverlay!);
      });
    }).catchError((error) {
      debugPrint("Error getting screen coordinate: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: BlocConsumer<ServicesBloc, ServicesState>(
        listener: (context, state) {
          if (state.showModal) {
            debugPrint(
                "try show modal with service id = ${state.selectedServiceId}");
            if (state.selectedServiceId != null) {
              //showInfoBottomSheet(context, serviceSingleBloc);
              _showInfoWindow(state.selectedServicePosition, serviceSingleBloc);
              serviceSingleBloc.add(ServiceSingleEvent.getSingleService(
                  id: state.selectedServiceId.toString()));
            }
          }
        },
        builder: (context, state) {
          if (state.status == ActionStatus.inProcess ||
              state.status == ActionStatus.pure) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == ActionStatus.isFailure) {
            return const Center(child: Text("Ошибка загрузки данных"));
          }
          ServicesBloc bloc = BlocProvider.of<ServicesBloc>(context);
          return Stack(
            children: [
              Positioned.fill(
                child: GoogleMap(
                  onMapCreated: (controller) {
                    debugPrint("onMapCreated");
                    _mapController = controller;
                    _setMyLocation(controller, bloc);
                  },
                  compassEnabled: false,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false,
                  onTap: (position) => _hideInfoWindow(),
                  markers: state.markers,
                  clusterManagers: {_clusterManager},
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: kDebugMode,
                  initialCameraPosition: _kMadrid,
                  onCameraIdle: () async {
                    /*final bloc = context.read<MapBloc>();
                    final controller = bloc._mapController;
                    if (_mapController != null) {
                      final region = await controller.getVisibleRegion();
                      bloc.add(MapMoved(region));
                    }*/
                    final region = await _mapController.getVisibleRegion();
                    bloc.add(ServicesEvent.mapMoved(region));
                  },
                ),
              ),
              // Overlay: Кнопка возврата
              Positioned(
                top: 4 + MediaQuery.of(context).padding.top,
                left: 16,
                child: GestureDetector(
                  onTap: () => showCustomAlertDialog(
                    context,
                    "¿Quieres salir?",
                    "¡Todos los filtros y servicios se descartarán!",
                    () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    () {
                      Navigator.pop(context);
                    }
                  ),//Navigator.pop(context),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.arrow_back_ios_new, color: black),
                  ),
                ),
              ),
              Positioned(
                left: 66,
                right: 16,
                top: 0 + MediaQuery.of(context).padding.top,
                child: ServicesDropdown(
                  allServices: state.allServices,
                  selectedServices: state.selectedServices,
                  onServicesChanged: (selectedServices) {
                    // Обновляем выбранные услуги в BLoC
                    bloc.add(
                        ServicesEvent.updateSelectedServices(selectedServices));
                    // Перезагружаем сервисы с новыми фильтрами
                    bloc.add(ServicesEvent.getServices(
                      catId: state.currentCatId,
                      region: state.currentRegion,
                      serviceIds: Set<int>.of(
                          selectedServices.map((service) => service.id)),
                    ));
                  },
                ),
              ),
              // Overlay: Регион (если есть)
              Positioned(
                top: 110 + MediaQuery.of(context).padding.top,
                left: 24,
                right: 24,
                child: state.currentRegion == null
                    ? const SizedBox()
                    : Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(26),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          child: Text(
                            state.currentRegion?.name ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                      ),
              ),
              Positioned(
                left: 24,
                right: 24,
                top: 64 + MediaQuery.of(context).padding.top,
                child: state.loadCarServices
                    ? Center(
                      child: Container(
                          width: 76,
                          height: 46,
                          decoration: BoxDecoration(
                              color: Colors.white,//.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          child: /*Row(
                            children: [
                              Text(
                                'Loading services...',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                              ),
                              const Spacer(),
                              Transform.scale(
                                scale: 0.5,
                                child: const CircularProgressIndicator(),
                              )
                            ],
                          ),*/
                          JumpingDots(
                            color: Colors.black,
                            radius: 9,
                            numberOfDots: 3,
                          )
                    )
              ) : const SizedBox(),
              ),
              // Overlay: Фильтр/категории
              Positioned(
                right: 1,
                bottom: 54 + MediaQuery.of(context).padding.bottom,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        radius: 30, // Adjust the size of the circle
                        backgroundColor: Colors.white.withValues(alpha: 0.9), // Example with 50% opacity
                        child: IconButton(
                          icon: SvgPicture.asset(AppIcons.myLocation),
                          color: Colors.black,
                          iconSize: 24,
                          onPressed: () {
                            _setMyLocation(_mapController, bloc);
                          },
                        ),
                      ),
                    ),
                    Image.asset(
                      AppImages.alarmButton,
                      fit: BoxFit.fill,
                      width: 82,
                      height: 82,
                    ).onTap(() => showAlarmBottomSheet(context, state.currentLocation))
                  ],
                ),
              ),

              Positioned(
                left: 24,
                right: 24,
                bottom: 12 + MediaQuery.of(context).padding.bottom,
                child: TypeSelector(
                  categories: state.serviceCategories,
                  selectedCategoryId: state.currentCatId,
                  onCategoryClick: (category) => bloc.add(
                    ServicesEvent.getServices(
                        catId: category.id,
                        region: state.currentRegion,
                        serviceIds: Set<int>.of(state.selectedServices
                            .map((service) => service.id))),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
