import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../data/model/photo_model.dart';
import 'add_car_event.dart';
import 'add_car_state.dart';
import 'package:permission_handler/permission_handler.dart';

class AddCarBloc extends Bloc<AddCarEvent, AddCarState> {
  final ImagePicker _imagePicker;

  AddCarBloc({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker(),
        super(const AddCarState.initial()) {
    on<AddCarEvent>((event, emit) async {
      await event.map(
        photoPickerRequested: (e) => _onPhotoPickerRequested(e, emit),
        onPhotoSelected: (e) => _onPhotoSelected(e, emit),
        cleared: (e) => _onCleared(e, emit),
        permissionsRequested: (e) => _onPermissionsRequested(e, emit),
      );
    });
  }


  Future<void> _onPhotoPickerRequested(
      photoPickerRequested event,
      Emitter<AddCarState> emit,
      ) async {
    try {
      emit(const AddCarState.loading());

      final XFile? pickedFile = await _imagePicker.pickImage(
        source: event.source,
        maxWidth: 1800,
        maxHeight: 1800,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        final photo = PhotoModel.fromFilePath(pickedFile.path);
        emit(AddCarState.success(photo: photo));
      } else {
        emit(const AddCarState.error(message: 'Фото не было выбрано'));
      }
    } catch (e) {
      emit(AddCarState.error(message: 'Ошибка при выборе фото: $e'));
    }
  }


  Future<void> _onPhotoSelected(
      OnPhotoSelected event,
      Emitter<AddCarState> emit,
      ) async {
    add(AddCarEvent.photoPickerRequested(source: event.source));
  }

  void _onCleared(
      _Cleared event,
      Emitter<AddCarState> emit,
      ) {
    emit(const AddCarState.cleared());
  }


  Future<void> _onPermissionsRequested(
      _PermissionsRequested event,
      Emitter<AddCarState> emit,
      ) async {
    try {
      final cameraStatus = await Permission.camera.request();
      final photosStatus = await Permission.photos.request();

      if (cameraStatus.isGranted && photosStatus.isGranted) {
        emit(const AddCarState.permissionsGranted());
      } else {
        emit(const AddCarState.permissionsDenied(
          message: 'Необходимы разрешения для доступа к камере и галерее',
        ));
      }
    } catch (e) {
      emit(AddCarState.permissionsDenied(
        message: 'Ошибка запроса разрешений: $e',
      ));
    }
  }
}