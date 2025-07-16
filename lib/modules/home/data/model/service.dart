import 'package:json_annotation/json_annotation.dart';
part 'service.g.dart';

@JsonSerializable()
class ServiceModel {
  @JsonKey(name: 'id', defaultValue: -1)
  final int id;
  @JsonKey(name: 'name', defaultValue: '')
  final String name;

  ServiceModel({
    required this.id,
    required this.name,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
