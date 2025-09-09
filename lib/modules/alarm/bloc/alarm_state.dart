import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/core/data/model/base_response.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
part 'alarm_state.freezed.dart';

@freezed
class AlarmState with _$AlarmState {
   factory AlarmState({
    @Default(AlarmModel(carStart: true)) AlarmModel alarmModel,
    @Default(Init()) ApiResponse<BaseResponse> responseState,
    String? selectedAlarm,
    @Default(true) bool isStartEngine,
    @Default(0) int currentPage,
    LatLng? currentPosition,
  }) = _AlarmState;
}