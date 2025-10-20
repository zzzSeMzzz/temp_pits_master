// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Insurers _$InsurersFromJson(Map<String, dynamic> json) => Insurers(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  slug: json['slug'] as String?,
  description: json['description'] as String?,
  logo: json['logo'] as String?,
);

Map<String, dynamic> _$InsurersToJson(Insurers instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'slug': instance.slug,
  'description': instance.description,
  'logo': instance.logo,
};
