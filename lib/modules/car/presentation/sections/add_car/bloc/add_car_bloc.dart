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
      await event.map<Future<void>>(
        photoPickerRequested: (event) async {
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
        },
        onPhotoSelected: (event) async {
          add(AddCarEvent.photoPickerRequested(event.source));
        },
        cleared: (event) async {
          emit(const AddCarState.cleared());
        },
        permissionsRequested: (event) async {
          try {
            final cameraStatus = await Permission.camera.request();
            //final photosStatus = await Permission.photos.request();

            if (cameraStatus.isGranted /*&& photosStatus.isGranted*/) {
              emit(const AddCarState.permissionsGranted());
            } else {
              emit(
                const AddCarState.permissionsDenied(
                  message:
                      'Необходимы разрешения для доступа к камере и галерее',
                ),
              );
            }
          } catch (e) {
            emit(
              AddCarState.permissionsDenied(
                message: 'Ошибка запроса разрешений: $e',
              ),
            );
          }
        },
      );
    });
  }
}
