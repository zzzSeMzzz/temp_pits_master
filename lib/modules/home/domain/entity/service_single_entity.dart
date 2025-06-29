// import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServiceSingleEntity {
  final String name;
  final String id;
  final double rating;
  final double latitude;
  final String address;
  final String desc;
  final String phone;
  final String status;
  final String categoryName;
  final String priceRange;
  final double longitude;
  final String image;
  final String cover;

  const ServiceSingleEntity({
    this.longitude = 0,
    this.latitude = 0,
    this.id = '',
    this.name = '',
    this.address = '',
    this.rating = 0,
    this.desc = '',
    this.image = '',
    this.phone = '',
    this.status = '',
    this.categoryName = '',
    this.priceRange = '',
    this.cover = '',
  });
}
