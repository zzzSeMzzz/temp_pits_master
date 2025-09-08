import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
part 'alarm_event.freezed.dart';

@freezed
class AlarmEvent with _$AlarmEvent {
  const factory AlarmEvent.sendAlarm(AlarmModel model) = _SendAlarm;
  const factory AlarmEvent.selectAlarm(String alarm) = _SelectAlarm;
  const factory AlarmEvent.setStartEngine(bool isStart) = _SetStartEngine;
  const factory AlarmEvent.setPage(int pageIndex) = _SetPage;
}