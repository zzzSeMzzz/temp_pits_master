import 'package:freezed_annotation/freezed_annotation.dart';
part 'repair_selection_state.freezed.dart';

@freezed
abstract class RepairSelectionState with _$RepairSelectionState {
  const factory RepairSelectionState.initial() = _Initial;

  const factory RepairSelectionState.loading() = _Loading;

  const factory RepairSelectionState.success(/*{
   required CarRegResponse vehicle,
  }*/) = _Success;

  const factory RepairSelectionState.error({
    required String message,
  }) = _Error;

  const factory RepairSelectionState.permissionsGranted() = _PermissionsGranted;

  const factory RepairSelectionState.permissionsDenied({
    required String message,
  }) = _PermissionsDenied;

  const factory RepairSelectionState.cleared() = _Cleared;

}