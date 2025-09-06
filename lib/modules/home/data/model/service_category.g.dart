// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceCategoryModel _$ServiceCategoryModelFromJson(
  Map<String, dynamic> json,
) => ServiceCategoryModel(
  idd: (json['id'] as num?)?.toInt() ?? -1,
  nameD: json['name'] as String? ?? '',
);

Map<String, dynamic> _$ServiceCategoryModelToJson(
  ServiceCategoryModel instance,
) => <String, dynamic>{'id': instance.idd, 'name': instance.nameD};
