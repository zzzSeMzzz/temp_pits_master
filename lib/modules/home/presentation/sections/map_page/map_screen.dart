import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
/*import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart'
    as cluster_manager;*/
/*import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart'
    as cluster_manager;*/
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/domain/usecase/get_services.dart';
import 'package:pits_app/modules/home/domain/usecase/get_single_service.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/services_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/single/service_single_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/type_selector.dart';
import 'package:pits_app/utils/action_status.dart';
import 'package:pits_app/utils/functions.dart';
import '../../../../../assets/constants/app_icons.dart';

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

  /* @override
  void initState() {
    super.initState();
  }*/

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
        CameraPosition(target: latLng, zoom: 10),
      ));
      bloc.add(ServicesEvent.setMyLocation(latLng));
    }, onError: (e) {
      debugPrint("Unable get location: ${e.toString()}");
      bloc.add(const ServicesEvent.setMyLocation(null));
    }); //.catchError(handleError);
  }

  static const CameraPosition _kMadrid = CameraPosition(
    target: LatLng(40.416775, -3.703790),
    zoom: 10.4746,
  );

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
      body: BlocBuilder<ServicesBloc, ServicesState>(
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
                  myLocationEnabled: true,
                  markers: state.markers,
                  clusterManagers: {_clusterManager},
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: kDebugMode,
                  initialCameraPosition: _kMadrid,
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
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(Icons.arrow_back_ios_new, color: black),
                  ),
                ),
              ),
              // Overlay: Регион (если есть)
              Positioned(
                top: 80 + MediaQuery.of(context).padding.top,
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
              // Overlay: Фильтр/категории
              Positioned(
                left: 24,
                right: 24,
                bottom: 24 + MediaQuery.of(context).padding.bottom,
                child: TypeSelector(
                  categories: state.serviceCategories,
                  selectedCategoryId: state.currentCatId,
                  onCategoryClick: (category) => bloc.add(
                    ServicesEvent.getServices(catId: category.id),
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
