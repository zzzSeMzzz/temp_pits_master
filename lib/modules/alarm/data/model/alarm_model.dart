import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:pits_app/core/data/extensions.dart';

import '../../../../utils/utils.dart';
part 'alarm_model.g.dart';

@JsonSerializable()
class AlarmModel {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'emergency', defaultValue: '')
  final String? emergency;
  @JsonKey(name: 'car_start', defaultValue: true, fromJson: boolFromAny)
  final bool carStart;
  @JsonKey(name: 'notes', defaultValue: '')
  final String? notes;
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @JsonKey(name: 'lat', fromJson: doubleFromAny)
  final double? lat;
  @JsonKey(name: 'lon', fromJson: doubleFromAny)
  final double? lon;
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @JsonKey(name: 'customer_id')
  final int? customerId;


  const AlarmModel({
    this.id,
    this.customerId,
    this.emergency,
    required this.carStart,
    this.notes,
    this.timestamp,
    this.lat,
    this.lon,
    this.createdAt,
    this.updatedAt
  });

  factory AlarmModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlarmModelToJson(this);

  LatLng getOrDefault(LatLng defaultLatLng) {
    if(lat!=null && lon!=null) return LatLng(lat!, lon!);
    return defaultLatLng;
  }

  DateTime getTimeStampOrDefault() {
    if(timestamp.isNullOrEmpty()) {
      return DateTime.now();
    } else {
      try {
        return DateFormat('yyyy-MM-dd HH:mm:ss').parse(timestamp!);
      } catch(e) {
        return DateTime.now();
      }
    }
  }

  @override
  String toString() {
    return 'AlarmModel{id: $id, emergency: $emergency, carStart: $carStart, notes: $notes, timestamp: $timestamp, lat: $lat, lon: $lon, createdAt: $createdAt, updatedAt: $updatedAt, customerId: $customerId}';
  }


}