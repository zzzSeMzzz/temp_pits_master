// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlarmModel _$AlarmModelFromJson(Map<String, dynamic> json) => AlarmModel(
  id: (json['id'] as num?)?.toInt(),
  customerId: (json['customer_id'] as num?)?.toInt(),
  emergency: json['emergency'] as String? ?? '',
  carStart: json['car_start'] == null ? true : boolFromAny(json['car_start']),
  notes: json['notes'] as String? ?? '',
  timestamp: json['timestamp'] as String?,
  lat: doubleFromAny(json['lat']),
  lon: doubleFromAny(json['lon']),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$AlarmModelToJson(AlarmModel instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.emergency case final value?) 'emergency': value,
      'car_start': instance.carStart,
      if (instance.notes case final value?) 'notes': value,
      if (instance.timestamp case final value?) 'timestamp': value,
      if (instance.lat case final value?) 'lat': value,
      if (instance.lon case final value?) 'lon': value,
      if (instance.createdAt case final value?) 'created_at': value,
      if (instance.updatedAt case final value?) 'updated_at': value,
      if (instance.customerId case final value?) 'customer_id': value,
    };
