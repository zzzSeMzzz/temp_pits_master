import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart'
//     as cluster_manager;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
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
  // late cluster_manager.ClusterManager clusterManager;

  void generateObjects(List<ServiceEntity> list) {
    print(list.length.toString() + 'serviceLenght');
    markers.clear();
    MarkerGenerator(list.map((l) => MapMark()).toList(), (lis) {
      mapBitmapsToMarkers(lis, iconScale: 1, list: list);
    }).generate(context);
  }

  void mapBitmapsToMarkers(List<Uint8List?> bitmaps,
      {double? iconScale, required List<ServiceEntity> list}) async {
    final markersSmall = <Marker>[];
    bitmaps.asMap().forEach((i, bmp) async {
      print(list[i].longitude.toString() + 'lat141');
      markersSmall.add(Marker(
        markerId: MarkerId(bmp.hashCode.toString()),
        onTap: () {
          print(markers.length.toString());
          showInfoBottomSheet(context, serviceSingleBloc);
          serviceSingleBloc
              .add(ServiceSingleEvent.getSingleService(id: list[i].id));
        },
        position: LatLng(list[i].latitude, list[i].longitude),
        icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(), AppImages.wrenchLocation),
      ));
    });

    setState(() {
      markers = markersSmall;
      print('market lenght ${markers.length}');
    });
    // clusterManager.setItems(list);
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
    // Временно отключаем кластеризацию
    // clusterManager = cluster_manager.ClusterManager<ServiceEntity>(
    //     [],
    //     (s) {
    //       setState(() {
    //         markers = s.toList();
    //       });
    //     },
    //     levels: [
    //       1,
    //       4.25,
    //       6.75,
    //       8.25,
    //       11.5,
    //       14.5,
    //     ],
    //     markerBuilder: (dynamic cluster) async {
    //       final c = cluster as cluster_manager.Cluster<ServiceEntity>;
    //       return c.isMultiple
    //           ? Marker(
    //               markerId: MarkerId(c.getId()),
    //               position: c.location,
    //               onTap: () {
    //                 print(c);
    //               },
    //               icon: await _getBasicClusterBitmap(c.isMultiple ? 125 : 75,
    //                   text: c.isMultiple ? c.count.toString() : null),
    //             )
    //           : Marker(
    //               markerId: MarkerId(c.hashCode.toString()),
    //               onTap: () {
    //                 showInfoBottomSheet(context, serviceSingleBloc);
    //                 print(c.items.length.toString());
    //                 serviceSingleBloc.add(ServiceSingleEvent.getSingleService(
    //                     id: c.items.first.id));
    //               },
    //               position: c.location,
    //               icon: await BitmapDescriptor.fromAssetImage(
    //                   const ImageConfiguration(), AppImages.wrenchLocation),
    //             );
    //     },
    //     stopClusteringZoom: 15.0
    //     );

    serviceSingleBloc = ServiceSingleBloc(getSingle: GetServiceSingleUseCase());

    super.initState();
  }

  setMylocation(GoogleMapController controller) async {
    var point = await getCurrentLocation();

    controller.moveCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(point.latitude, point.longitude), zoom: 6),
    ));
  }

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
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: black,
                )),
            title: Text(
              'Services',
              style: TextStyle(color: black, fontSize: 24),
            ),
          ),
          body: Stack(
            children: [
              // Временно показываем только WebView
              Positioned.fill(child: WebViewPage()),

              // Закомментированная карта с кластеризацией
              // Positioned.fill(
              //     child: SafeArea(
              //   child: Container(
              //     color: Colors.orange[100],
              //     child: GoogleMap(
              //       onCameraMove: clusterManager.onCameraMove,
              //       onCameraIdle: clusterManager.updateMap,
              //       onMapCreated: (controller) {
              //         _controller.complete(controller);
              //         setMylocation(controller);
              //         clusterManager.setMapId(controller.mapId);
              //       },
              //       compassEnabled: false,
              //       myLocationButtonEnabled: false,
              //       myLocationEnabled: false,
              //       markers: Set<Marker>.of(markers),
              //       zoomGesturesEnabled: true,
              //       initialCameraPosition:
              //           CameraPosition(target: location, zoom: 2),
              //     ),
              //   ),
              // )),
            ],
          ),
        ),
      );
}
