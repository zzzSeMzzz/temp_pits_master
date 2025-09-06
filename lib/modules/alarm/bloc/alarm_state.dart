
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
part 'alarm_state.freezed.dart';

@freezed
class AlarmState with _$AlarmState {
   factory AlarmState({
    @Default(AlarmModel(carStart: true)) AlarmModel alarmModel
  }) = _AlarmState;
}