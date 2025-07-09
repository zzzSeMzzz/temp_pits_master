import 'package:json_annotation/json_annotation.dart';
import '../../domain/entity/service_category.dart';
part 'service_category.g.dart';

@JsonSerializable()
class ServiceCategoryModel extends ServiceCategory {

  @JsonKey(name: 'id', defaultValue: -1)
  final int idd;
  @JsonKey(name: 'name', defaultValue: '')
  final String nameD;
  @JsonKey(name: 'slug', defaultValue: '')
  final String slugD;

  ServiceCategoryModel({
    required this.idd,
    required this.nameD,
    required this.slugD,
  }) : super(
    id: idd,
    name: nameD,
    slug: slugD,
  );

  factory ServiceCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryModelFromJson(json);
}
