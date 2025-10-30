import 'package:freezed_annotation/freezed_annotation.dart';
part 'service_selection_state.freezed.dart';

@freezed
class ServiceSelectionState with _$ServiceSelectionState {
  const factory ServiceSelectionState({
    @Default(<String>{}) Set<String> selectedKeys,
  }) = _ServiceSelectionState;
}
