// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlarmModel _$AlarmModelFromJson(Map<String, dynamic> json) => AlarmModel(
  id: (json['id'] as num?)?.toInt(),
  emergency: json['emergency'] as String? ?? '',
  carStart: json['carStart'] as bool? ?? true,
  notes: json['notes'] as String? ?? '',
  timestamp: json['timestamp'] as String?,
  /*lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),*/
  lat: 0,
  lon: 0,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$AlarmModelToJson(AlarmModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'emergency': instance.emergency,
      'carStart': instance.carStart,
      'notes': instance.notes,
      'timestamp': instance.timestamp,
      'lat': instance.lat,
      'lon': instance.lon,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
