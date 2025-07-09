import 'package:json_annotation/json_annotation.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';
part 'service.g.dart';

@JsonSerializable()
class ServiceModel extends ServiceEntity {
  @JsonKey(name: 'id', defaultValue: -1)
  final int idd;
  /*@JsonKey(name: 'listing_id', defaultValue: '')
  final String listingId;
  @JsonKey(name: 'address', defaultValue: '')
  final String address;*/
  @JsonKey(name: 'lat', defaultValue: '0')
  final String lat;
  @JsonKey(name: 'lng', defaultValue: '0')
  final String long;
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: '_case27_average_rating', defaultValue: '0')
  final String averageRating;
  @JsonKey(name: '_featured', defaultValue: '0')
  final String featuredd;
  @JsonKey(name: 'region')
  final List<int> regions;

  ServiceModel({
    required this.idd,
    required this.averageRating,
    required this.lat,
    required this.title,
    required this.regions,
    required this.featuredd,
    required this.long
  })
      : super(
          id: idd,
          featured: featuredd == "0" ? false : true,
          latitude: double.parse(lat),
          longitude: double.parse(long),
          name: title,
          rating: int.parse(averageRating),
          region: regions
        );

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
