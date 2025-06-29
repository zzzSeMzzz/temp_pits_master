import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter_platform_interface/src/types/location.dart';

class ServiceEntity with ClusterItem {
  final String name;
  final String id;
  final double rating;
  final double latitude;
  final String  address;
  final double longitude;

    ServiceEntity({
    this.longitude = 0,
    this.latitude = 0,
    this.id = '',
    this.name = '',
    this.address = '',
    this.rating = 0,
  });

  @override

  LatLng get location => LatLng(latitude, longitude);
}
