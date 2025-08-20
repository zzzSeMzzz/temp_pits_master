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
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/services_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/info_bottomsheet.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/type_selector.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/widgets/services_dropdown.dart';
import 'package:pits_app/utils/action_status.dart';
import 'package:pits_app/utils/functions.dart';

import '../../../../../assets/constants/app_icons.dart';
import '../../../../../assets/constants/app_images.dart';
import '../../../domain/usecase/get_single_service.dart';
import 'bloc/single/service_single_bloc.dart';

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
              showInfoBottomSheet(context, serviceSingleBloc);
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
                  onTap: () => Navigator.pop(context),
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
                left: 16,
                right: 16,
                top: 54 + MediaQuery.of(context).padding.top,
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
                bottom: 64 + MediaQuery.of(context).padding.bottom,
                child: state.loadCarServices
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(4)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        child: Row(
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
                        ),
                      )
                    : const SizedBox(),
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
                    )
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
