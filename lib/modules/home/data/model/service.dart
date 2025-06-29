import 'package:json_annotation/json_annotation.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';

part 'service.g.dart';

@JsonSerializable()
class ServiceModel extends ServiceEntity {
  @JsonKey(name: 'id', defaultValue: '')
  final String idd;
  @JsonKey(name: 'listing_id', defaultValue: '')
  final String listingId;
  @JsonKey(name: 'address', defaultValue: '')
  final String address;
  @JsonKey(name: 'lat', defaultValue: '')
  final String lat;
  @JsonKey(name: 'lng', defaultValue: '')
  final String long;

  ServiceModel(
      {required this.idd,
      required this.address,
      required this.lat,
      required this.listingId,
      required this.long})
      : super(
          id: idd,
          address: address,
          latitude: double.parse(long),
          longitude: double.parse(long),
          name: '',
          rating: 0.1,
        );

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
