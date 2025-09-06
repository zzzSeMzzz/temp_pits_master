// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlarmModel _$AlarmModelFromJson(Map<String, dynamic> json) => AlarmModel(
  emergency: json['emergency'] as String? ?? '',
  carStart: json['carStart'] as bool? ?? true,
  notes: json['notes'] as String? ?? '',
  timestamp: json['timestamp'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AlarmModelToJson(AlarmModel instance) =>
    <String, dynamic>{
      'emergency': instance.emergency,
      'carStart': instance.carStart,
      'notes': instance.notes,
      'timestamp': instance.timestamp,
      'lat': instance.lat,
      'lon': instance.lon,
    };
