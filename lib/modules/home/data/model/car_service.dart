import 'package:json_annotation/json_annotation.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
part 'car_service.g.dart';

@JsonSerializable()
class CarServiceModel extends CarServiceEntity {
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

  CarServiceModel({
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
          featured: featuredd.isEmpty || featuredd == "0" ? false : true,
          latitude: lat.isEmpty ? 0.0 : double.parse(lat),
          longitude: long.isEmpty ? 0.0 : double.parse(long),
          name: title,
          rating: averageRating.isEmpty ? 0 : double.parse(averageRating),
          region: regions
        );

  factory CarServiceModel.fromJson(Map<String, dynamic> json) =>
      _$CarServiceModelFromJson(json);
}
