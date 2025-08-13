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
import 'package:pits_app/utils/action_status.dart';
import 'package:pits_app/utils/functions.dart';

import '../../../../../assets/constants/app_icons.dart';
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
            debugPrint("try show modal with service id = ${state.selectedServiceId}");
            if(state.selectedServiceId!=null) {
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
                left: 24,
                right: 24,
                top: 54 + MediaQuery.of(context).padding.top,
                child: Container(
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(16)),
                  height: 40,
                  child: Stack(
                    children: [
                      // Горизонтальный скролл
                      Positioned.fill(
                        child: Container(
                          padding: const EdgeInsets.only(right: 30),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.only(
                                right: 36), // чтобы не перекрывать стрелку
                            child: Row(
                              children: state.allServices
                                  .map((service) => TextButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(Icons.close,
                                            color: Colors.black),
                                        label: Text(service.name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                        iconAlignment: IconAlignment.end,
                                      ))
                                  .toList(),
                            ),
                          ),
                        ),
                      ),
                      // Стрелка справа, всегда поверх
                      Positioned(
                        right: 12,
                        top: 0,
                        bottom: 0,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            // todo: scroll right
                          },
                          child: SvgPicture.asset(
                            AppIcons.arrowDown,
                            width: 12,
                            height: 7,
                          ),
                        ),
                      ),
                    ],
                  ),
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
