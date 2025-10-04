import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../alarm/data/model/alarm_model.dart';

part 'activity_state.freezed.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState.initial() = _Initial;

  const factory ActivityState.noAuth(String message) = NoAuth;

  const factory ActivityState.loading() = _Loading;

  const factory ActivityState.success({
    required List<AlarmModel> activities,
  }) = _Success;

  const factory ActivityState.error({
    required String message,
  }) = _Error;

  const factory ActivityState.cleared() = _Cleared;


}