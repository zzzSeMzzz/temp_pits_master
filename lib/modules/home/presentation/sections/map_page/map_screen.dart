import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
      controller.moveCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(point.latitude, point.longitude), zoom: 12),
      ));
    }, onError: (e) {
      debugPrint("Unable get location: ${e.toString()}");
      bloc.add(ServicesEvent.getServices(catId: bloc.state.currentCatId));
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
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => ServicesBloc(GetServicesUseCase()),
          ),
          BlocProvider(
            create: (_) =>
                ServiceSingleBloc(getSingle: GetServiceSingleUseCase()),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: black,
                )),
            title: const Text(
              'Services',
              style: TextStyle(color: black, fontSize: 24),
            ),
          ),
          body: BlocBuilder<ServicesBloc, ServicesState>(
            builder: (context, state) {
              if (state.status == ActionStatus.inProcess) {
                return const Center(child: CircularProgressIndicator());
              }
              ServicesBloc bloc = BlocProvider.of<ServicesBloc>(context);
              return Stack(
                children: [
                  Positioned.fill(
                      child: SafeArea(
                    child: Container(
                      color: Colors.orange[100],
                      child: GoogleMap(
                        //onCameraMove: clusterManager.onCameraMove,
                        //onCameraIdle: clusterManager.updateMap,
                        onMapCreated: (controller) {
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
                  )),

                  //Positioned.fill(child: WebViewPage()),

                  Positioned(
                      left: 24,
                      right: 24,
                      top: 16 + MediaQuery.of(context).padding.top,
                      child: Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(4)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 13),
                        child: Row(
                          children: [
                            Text(
                              'Switches to list view',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                            ),
                            const Spacer(),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                AppIcons.list,
                                width: 24,
                                height: 24,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      left: 24,
                      right: 24,
                      bottom: 24 + MediaQuery.of(context).padding.bottom,
                      child: TypeSelector(
                        categories: state.serviceCategories,
                        selectedCategoryId: state.currentCatId,
                        onCategoryClick: (category) => {
                          bloc.add(
                              ServicesEvent.getServices(catId: category.id))
                        },
                      ))
                ],
              );
            },
          ),
        ),
      );
}
