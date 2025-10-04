import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/car_reg_request.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/car_scan_info.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/repository/car_repository.dart';
import '../data/model/car_reg_response.dart';
import '../data/model/photo_model.dart';
import '../data/model/vehicle.dart';
import 'add_car_event.dart';
import 'add_car_state.dart';
import 'package:permission_handler/permission_handler.dart';

class AddCarBloc extends Bloc<AddCarEvent, AddCarState> {
  final ImagePicker _imagePicker;

  final _repo = CarRepository();

  AddCarBloc({ImagePicker? imagePicker})
    : _imagePicker = imagePicker ?? ImagePicker(),
      super(const AddCarState.initial()) {
    on<AddCarEvent>((event, emit) async {
      await event.map<Future<void>>(
        photoPickerRequested: (event) async {
          try {

            final XFile? pickedFile = await _imagePicker.pickImage(
              source: event.source,
              maxWidth: 1800,
              maxHeight: 1800,
              imageQuality: 85,
            );

            emit(const AddCarState.loading());

            if (pickedFile != null) {
              final photo = PhotoModel.fromFilePath(pickedFile.path);
              add(AddCarEvent.onScanPhoto(photo));
            } else {
              emit(const AddCarState.error(message: 'Фото не было выбрано'));
            }
          } catch (e) {
            emit(AddCarState.error(message: 'Ошибка при выборе фото: $e'));
          }
        },
        onPhotoSelected: (event) async { //проиходит, когда выбираем откуда источник фотки камера или галерея
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
        onScanPhoto: (event) async {
          try {
            emit(const AddCarState.loading());
            final carInfo = await _repo.loadCarImage(event.photo);
            if(carInfo is Success<CarScanInfoContainer>) {
              String? cNum;
              if(carInfo.data.results!=null && carInfo.data.results!.isNotEmpty) {
                cNum = carInfo.data.results!.first.plate;
              }
              emit(AddCarState.currentCarNumber(carNumber: cNum));
            } else if(carInfo is Error<CarScanInfoContainer>) {
              emit(AddCarState.error(message: carInfo.errorMessage));
            }
          } catch (e) {
            emit(AddCarState.error(message: 'Ошибка распознавания фото: $e'));
          }
        },
        onRegCar: (event) async {
          try {
            emit(const AddCarState.loading());
            final carInfo = await _repo.regCar(CareRegRequest.formNumber(event.carNumber));
            if(carInfo is Success<CarRegResponse>) {
              emit(AddCarState.success(vehicle: carInfo.data));
            } else if(carInfo is Error<CarRegResponse>) {
              emit(AddCarState.error(message: carInfo.errorMessage));
            }
          } catch (e) {
            emit(AddCarState.error(message: 'Ошибка распознавания фото: $e'));
          }
        },
      );
    });
  }
}
