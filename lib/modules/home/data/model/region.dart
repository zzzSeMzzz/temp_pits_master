import 'package:json_annotation/json_annotation.dart';
part 'region.g.dart';

@JsonSerializable()
class RegionModel {
  @JsonKey(name: 'id', defaultValue: -1)
  final int id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  RegionModel({
    required this.id,
    required this.name,
  });

  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);
}
