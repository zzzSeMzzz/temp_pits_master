import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../car/presentation/sections/add_car/data/model/photo_model.dart';
part 'repair_selection_state.freezed.dart';

@freezed
abstract class RepairSelectionState with _$RepairSelectionState {
  const factory RepairSelectionState.initial() = _Initial;

  const factory RepairSelectionState.loading() = _Loading;

  const factory RepairSelectionState.success({
    PhotoModel? selectedPhoto,
  }) = _Success;

  const factory RepairSelectionState.error({
    required String message,
  }) = _Error;

  const factory RepairSelectionState.permissionsGranted() = _PermissionsGranted;

  const factory RepairSelectionState.permissionsDenied({
    required String message,
  }) = _PermissionsDenied;

  const factory RepairSelectionState.cleared() = _Cleared;

}