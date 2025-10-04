import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../data/model/photo_model.dart';
part 'add_car_event.freezed.dart';

@freezed
class AddCarEvent with _$AddCarEvent {
  const factory AddCarEvent.photoPickerRequested(ImageSource source) = _PhotoPickerRequested;
  const factory AddCarEvent.onPhotoSelected(ImageSource source) = _OnPhotoSelected;
  const factory AddCarEvent.permissionsRequested () = _PermissionsRequested;
  const factory AddCarEvent.cleared() = _Cleared;
  const factory AddCarEvent.onScanPhoto(PhotoModel photo) = _onScanPhoto;
  const factory AddCarEvent.onGetVehicleInfo(String carNumber) = _onGetVehicleInfo;
}