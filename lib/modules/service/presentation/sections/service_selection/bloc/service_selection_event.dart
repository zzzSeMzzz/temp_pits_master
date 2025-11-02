import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_selection_event.freezed.dart';

@freezed
class ServiceSelectionEvent with _$ServiceSelectionEvent {
  const factory ServiceSelectionEvent.toggleService(String serviceKey) =
      _ToggleService;
  const factory ServiceSelectionEvent.clearSelection() = _ClearSelection;
}
