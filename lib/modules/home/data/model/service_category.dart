import 'package:json_annotation/json_annotation.dart';
import '../../domain/entity/service_category.dart';
part 'service_category.g.dart';

@JsonSerializable()
class ServiceCategoryModel extends ServiceCategory {

  @JsonKey(name: 'id', defaultValue: -1)
  final int idd;
  @JsonKey(name: 'name', defaultValue: '')
  final String nameD;

  ServiceCategoryModel({
    required this.idd,
    required this.nameD,
  }) : super(
    id: idd,
    name: nameD.replaceAll("&amp;", "&"),
  );

  factory ServiceCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceCategoryModelFromJson(json);
}
