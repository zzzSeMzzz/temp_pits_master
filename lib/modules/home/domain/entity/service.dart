import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceEntity {
  static const String mainClusterManagerId = 'main_cm';

  final String name;
  final int id;
  final int rating;
  final double latitude;
  final double longitude;
  final bool featured;
  final List<int> region;

  ServiceEntity({
    this.longitude = 0,
    this.latitude = 0,
    this.id = -1,
    this.name = '',
    this.region = const [],
    this.rating = 0,
    this.featured = false,
  });

  Marker toMarker(BitmapDescriptor? icon) {
    Marker marker = Marker(
      markerId: MarkerId(id.toString()),
      position: location,
      infoWindow: InfoWindow(title: name),
      icon: icon ?? BitmapDescriptor.defaultMarker,
      clusterManagerId: const ClusterManagerId(mainClusterManagerId),
    );
    return marker;
  }

  /*@override*/
  LatLng get location => LatLng(latitude, longitude);
}
