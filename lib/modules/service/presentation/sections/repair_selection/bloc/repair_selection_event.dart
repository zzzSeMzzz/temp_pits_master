import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'repair_selection_event.freezed.dart';

@freezed
class RepairSelectionEvent  with _$RepairSelectionEvent {
  const factory RepairSelectionEvent.photoPickerRequested(ImageSource source) = _PhotoPickerRequested;
  const factory RepairSelectionEvent.onPhotoSelected(ImageSource source) = _OnPhotoSelected;
  const factory RepairSelectionEvent.permissionsRequested() = _PermissionsRequested;
  const factory RepairSelectionEvent.cleared() = _Cleared;
}