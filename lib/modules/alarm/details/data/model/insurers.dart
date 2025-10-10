import 'package:json_annotation/json_annotation.dart';
part 'insurers.g.dart';

@JsonSerializable()
class Insurers {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "slug")
  String? slug;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "logo")
  String? logo;

  Insurers({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.logo,
  });

  factory Insurers.fromJson(Map<String, dynamic> json) => _$InsurersFromJson(json);

  Map<String, dynamic> toJson() => _$InsurersToJson(this);
}