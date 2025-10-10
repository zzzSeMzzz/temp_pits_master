import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/alarm/details/data/model/insurers.dart';
import 'package:pits_app/modules/alarm/details/data/model/workshop.dart';
part 'alarm_view_state.freezed.dart';

@freezed
class AlarmViewState with _$AlarmViewState {
  const factory AlarmViewState.initial() = AlarmViewInitial;
  const factory AlarmViewState.loading() = AlarmViewLoading;
  factory AlarmViewState.success(
      List<Insurers> insures,
      List<Workshop> workshops,
      int pageInsures,
      int pageWorkShop,
      String elapsedTime
  ) = AlarmViewSuccess;
  const factory AlarmViewState.error(String message) = AlarmViewError;
}