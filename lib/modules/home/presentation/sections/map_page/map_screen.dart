import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
/*import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart'
    as cluster_manager;*/
import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart'  as cluster_manager;
import 'package:google_maps_flutter/google_maps_flutter.dart' hide Cluster;
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';
import 'package:pits_app/modules/home/domain/usecase/get_services.dart';
import 'package:pits_app/modules/home/domain/usecase/get_single_service.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/services_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/bloc/single/service_single_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/info_bottomsheet.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/type_selector.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/part/webview_page.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/widgets/map_mark.dart';
import 'package:pits_app/utils/action_status.dart';
import 'package:pits_app/utils/functions.dart';
import 'package:pits_app/utils/marker_generator.dart';

import '../../../../../assets/constants/app_icons.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng location = const LatLng(41.27222972175446, 69.191233892838);

  List<Marker> markers = [];
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late ServicesBloc servicesBloc;
  late ServiceSingleBloc serviceSingleBloc;
  late cluster_manager.ClusterManager clusterManager;

  void generateObjects(List<ServiceEntity> list) {
    debugPrint('${list.length}serviceLength');
    markers.clear();
    MarkerGenerator(list.map((l) => const MapMark()).toList(), (lis) {
      mapBitmapsToMarkers(lis, iconScale: 1, list: list);
    }).generate(context);
  }

  void mapBitmapsToMarkers(List<Uint8List?> bitmaps,
      {double? iconScale, required List<ServiceEntity> list}) async {
    final markersSmall = <Marker>[];
    bitmaps.asMap().forEach((i, bmp) async {
      debugPrint('${list[i].longitude}lat141');
      markersSmall.add(Marker(
        markerId: MarkerId(bmp.hashCode.toString()),
        onTap: () {
          debugPrint(markers.length.toString());
          showInfoBottomSheet(context, serviceSingleBloc);
          serviceSingleBloc
              .add(ServiceSingleEvent.getSingleService(id: list[i].id));
        },
        position: LatLng(list[i].latitude, list[i].longitude),
        icon: await BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), AppImages.wrenchLocation),
      ));
    });

    setState(() {
      markers = markersSmall;
      debugPrint('market lenght ${markers.length}');
    });
    clusterManager.setItems(list);
  }

  static Future<BitmapDescriptor> _getBasicClusterBitmap(int size,
      {String? text}) async {
    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = Colors.red;

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.normal),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );
    }

    final img = await pictureRecorder.endRecording().toImage(size, size);
    final data = await img.toByteData(format: ImageByteFormat.png) as ByteData;

    return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
  }

  @override
  void initState() {
    servicesBloc = ServicesBloc(GetServicesUseCase());
    clusterManager = cluster_manager.ClusterManager<ServiceEntity>(
        [],
        (s) {
          setState(() {
            markers = s.toList();
          });
        },
        levels: [
          1,
          4.25,
          6.75,
          8.25,
          11.5,
          14.5,
        ],
        markerBuilder: (clusterD) async {
          final cluster = clusterD as cluster_manager.Cluster;
          return cluster.isMultiple
              ? Marker(
                  markerId: MarkerId(cluster.getId()),
                  position: cluster.location,
                  onTap: () {
                    debugPrint(cluster.toString());
                  },
                  icon: await _getBasicClusterBitmap(
                      cluster.isMultiple ? 125 : 75,
                      text:
                          cluster.isMultiple ? cluster.count.toString() : null),
                )
              : Marker(
                  markerId: MarkerId(cluster.hashCode.toString()),
                  onTap: () {
                    showInfoBottomSheet(context, serviceSingleBloc);
                    debugPrint(cluster.items.length.toString());
                    serviceSingleBloc.add(ServiceSingleEvent.getSingleService(
                        id: (cluster.items.first as cluster_manager.Cluster).getId()));
                  },
                  position: cluster.location,
                  icon: await BitmapDescriptor.fromAssetImage(
                      const ImageConfiguration(), AppImages.wrenchLocation),
                );
        },
        // Optional : Configure this if you want to change zoom levels at which the clustering precision change

        // Optional : This number represents the percentage (0.2 for 20%) of latitude and longitude (in each direction) to be considered on top of the visible map bounds to render clusters. This way, clusters don't "pop out" when you cross the map.
        stopClusteringZoom:
            15.0 // Optional : The zoom level to stop clustering, so it's only rendering single item "clusters"
        );

    serviceSingleBloc = ServiceSingleBloc(getSingle: GetServiceSingleUseCase());

    super.initState();
  }

  setMylocation(GoogleMapController controller) async {
    var point = await getCurrentLocation();

    controller.moveCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(point.latitude, point.longitude), zoom: 6),
    ));
  }

  static const CameraPosition _kMadrid = CameraPosition(
    target: LatLng(40.416775, -3.703790),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: servicesBloc,
          ),
          BlocProvider.value(
            value: serviceSingleBloc,
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
          body: servicesBloc.state.status == ActionStatus.inProcess ? const CircularProgressIndicator() : Stack(
            children: [
              Positioned.fill(
                  child: SafeArea(
                child:   Container(
                  color: Colors.orange[100],
                  child: GoogleMap(
                    onCameraMove: clusterManager.onCameraMove,
                    onCameraIdle: clusterManager.updateMap,
                    onMapCreated: (controller) {
                      _controller.complete(controller);
                      setMylocation(controller);
                      clusterManager.setMapId(controller.mapId);
                    },
                    compassEnabled: false,
                    myLocationButtonEnabled: false,
                    myLocationEnabled: false,
                    markers: Set<Marker>.of(markers),
                    zoomGesturesEnabled: true,
                    zoomControlsEnabled: false,
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
                        color: white, borderRadius: BorderRadius.circular(4)),
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
                                  fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        const Spacer(),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: SvgPicture.asset(
                            AppIcons.close,
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
                  child: const TypeSelector())
            ],
          ),
        ),
      );
}
