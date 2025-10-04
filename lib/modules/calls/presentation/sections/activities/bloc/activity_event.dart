import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_event.freezed.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
  const factory ActivityEvent.cleared() = _Cleared;
  const factory ActivityEvent.loadActivities() = _LoadActivities;
}