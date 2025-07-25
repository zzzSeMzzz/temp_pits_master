import 'package:json_annotation/json_annotation.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/domain/entity/service_single_entity.dart';

class ServiceSingleModel extends ServiceSingleEntity {
  final int idd;
  final String name;
  final String address;

  final String tagline;
  final String phone;
  final String priceRange;
  final String status;
  final String image;
  final String cover;

  ServiceSingleModel({
    required this.idd,
    required this.address,
    required this.tagline,
    required this.name,
    required this.phone,
    required this.priceRange,
    required this.status,
    required this.image,
    required this.cover,
  }) : super(
          id: idd.toString(),
          desc: tagline,
          name: name,
          address: address,
          priceRange: priceRange,
          status: status,
          phone: phone,
          image: image,
          rating: 0.1,
        );

  factory ServiceSingleModel.fromJson(Map<String, dynamic> json) {
    var imageList = json['_job_logo'] as List<dynamic>;
    var coverList = json['_job_cover'] as List<dynamic>;
    return ServiceSingleModel(
      status: json['ping_status'] as String? ?? '',
      idd: json['id'] as int? ?? 0,
      address: json['address'] as String? ?? 'No address found',
      name: json['title']['rendered'] as String? ?? '',
      tagline: json['_job_tagline'] as String? ?? '',
      phone: json['_job_phone'] as String? ?? '',
      priceRange: json['_price_range'] as String? ?? '',
      cover: coverList.isNotEmpty ? coverList[0] as String? ?? '' : '',
      image: imageList.isNotEmpty ? imageList[0] as String? ?? '' : '',
    );
  }
}
