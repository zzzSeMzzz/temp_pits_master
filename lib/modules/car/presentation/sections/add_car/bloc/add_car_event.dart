import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/picker_type.dart';
part 'add_car_event.freezed.dart';

@freezed
class AddCarEvent with _$AddCarEvent {
  const factory AddCarEvent.photoPickerRequested(ImageSource source) = _PhotoPickerRequested;
  const factory AddCarEvent.onPhotoSelected(PickerType pickerType) = _OnPhotoSelected;
  const factory AddCarEvent.permissionsRequested () = _PermissionsRequested;
  const factory AddCarEvent.cleared() = _Cleared;
}