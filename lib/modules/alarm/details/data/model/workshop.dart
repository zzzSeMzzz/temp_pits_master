import 'package:json_annotation/json_annotation.dart';
part 'workshop.g.dart';

@JsonSerializable()
class Workshop {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "lat")
  String? lat;
  @JsonKey(name: "lng")
  String? lng;
  @JsonKey(name: "distance_km")
  double? distanceKm;
  @JsonKey(name: "_featured")
  String? featured;
  @JsonKey(name: "_case27_average_rating")
  String? case27AverageRating;
  @JsonKey(name: "ping_status")
  String? pingStatus;

  Workshop({
    this.id,
    this.title,
    this.lat,
    this.lng,
    this.distanceKm,
    this.featured,
    this.case27AverageRating,
    this.pingStatus,
  });

  factory Workshop.fromJson(Map<String, dynamic> json) => _$WorkshopFromJson(json);

  Map<String, dynamic> toJson() => _$WorkshopToJson(this);
}
