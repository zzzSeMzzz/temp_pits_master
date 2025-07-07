import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceEntity {
  static const String mainClusterManagerId = 'main_cm';

  final String name;
  final String id;
  final double rating;
  final double latitude;
  final String address;
  final double longitude;

  ServiceEntity({
    this.longitude = 0,
    this.latitude = 0,
    this.id = '',
    this.name = '',
    this.address = '',
    this.rating = 0,
  });

  Marker toMarker(BitmapDescriptor? icon) {
    Marker marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: InfoWindow(title: name, snippet: address),
      icon: icon ?? BitmapDescriptor.defaultMarker,
      clusterManagerId: const ClusterManagerId(mainClusterManagerId),
    );
    return marker;
  }

  /*@override*/
  LatLng get location => LatLng(latitude, longitude);
}
