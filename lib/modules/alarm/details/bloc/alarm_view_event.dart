import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
part 'alarm_view_event.freezed.dart';

@freezed
class AlarmViewEvent with _$AlarmViewEvent {
  const factory AlarmViewEvent.load(LatLng latLng) = LoadAlarmData;
}