// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workshop _$WorkshopFromJson(Map<String, dynamic> json) => Workshop(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  lat: json['lat'] as String?,
  lng: json['lng'] as String?,
  distanceKm: (json['distance_km'] as num?)?.toDouble(),
  featured: json['_featured'] as String?,
  case27AverageRating: json['_case27_average_rating'] as String?,
  pingStatus: json['ping_status'] as String?,
);

Map<String, dynamic> _$WorkshopToJson(Workshop instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'lat': instance.lat,
  'lng': instance.lng,
  'distance_km': instance.distanceKm,
  '_featured': instance.featured,
  '_case27_average_rating': instance.case27AverageRating,
  'ping_status': instance.pingStatus,
};
