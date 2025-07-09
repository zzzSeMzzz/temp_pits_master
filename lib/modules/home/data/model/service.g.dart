// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) => ServiceModel(
      idd: (json['id'] as num?)?.toInt() ?? -1,
      averageRating: json['_case27_average_rating'] as String? ?? '0',
      lat: json['lat'] as String? ?? '0',
      title: json['title'] as String? ?? '',
      regions: (json['region'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      featuredd: json['_featured'] as String? ?? '0',
      long: json['lng'] as String? ?? '0',
    );

Map<String, dynamic> _$ServiceModelToJson(ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.idd,
      'lat': instance.lat,
      'lng': instance.long,
      'title': instance.title,
      '_case27_average_rating': instance.averageRating,
      '_featured': instance.featuredd,
      'region': instance.regions,
    };
