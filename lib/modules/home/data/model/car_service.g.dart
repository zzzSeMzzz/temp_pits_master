// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarServiceModel _$CarServiceModelFromJson(Map<String, dynamic> json) =>
    CarServiceModel(
      idd: (json['id'] as num?)?.toInt() ?? -1,
      averageRating: json['_case27_average_rating'] as String? ?? '0',
      lat: json['lat'] as String? ?? '0',
      title: json['title'] as String? ?? '',
      status: json['ping_status'] as String? ?? '',
      regions: (json['region'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      featuredd: json['_featured'] as String? ?? '0',
      long: json['lng'] as String? ?? '0',
    );

Map<String, dynamic> _$CarServiceModelToJson(CarServiceModel instance) =>
    <String, dynamic>{
      'id': instance.idd,
      'lat': instance.lat,
      'lng': instance.long,
      'title': instance.title,
      'status': instance.status,
      '_case27_average_rating': instance.averageRating,
      '_featured': instance.featuredd,
      'region': instance.regions,
    };
