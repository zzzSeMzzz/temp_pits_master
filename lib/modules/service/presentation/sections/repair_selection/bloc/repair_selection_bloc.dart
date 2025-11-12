import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../../car/presentation/sections/add_car/data/model/photo_model.dart';
import '../data/model/service_repair_response.dart';
import '../data/repository/repair_repository.dart';
import 'repair_selection_event.dart';
import 'repair_selection_state.dart';

class RepairSelectionBloc extends Bloc<RepairSelectionEvent, RepairSelectionState> {
  final ImagePicker _imagePicker;

  final _repo = RepairRepository();

  PhotoModel? _photo;
  PhotoModel? get photo => _photo;

  RepairSelectionBloc({ImagePicker? imagePicker})
    : _imagePicker = imagePicker ?? ImagePicker(),
      super(const RepairSelectionState.initial()) {
    on<RepairSelectionEvent>((event, emit) async {
      await event.map<Future<void>>(
        photoPickerRequested: (event) async {
          try {

            final XFile? pickedFile = await _imagePicker.pickImage(
              source: event.source,
              maxWidth: 1800,
              maxHeight: 1800,
              imageQuality: 85,
            );

            emit(const RepairSelectionState.loading());

            if (pickedFile != null) {
              _photo = PhotoModel.fromFilePath(pickedFile.path);
              emit(RepairSelectionState.success(selectedPhoto: _photo));
            } else {
              //emit(const RepairSelectionState.error(message: 'La foto no se ha guardado'));
              emit(RepairSelectionState.success(selectedPhoto: _photo));
            }
          } catch (e) {
            emit(RepairSelectionState.error(message: 'Error al seleccionar una foto: $e'));
          }
        },
        onPhotoSelected: (event) async { //проиходит, когда выбираем откуда источник фотки камера или галерея
          add(RepairSelectionEvent.photoPickerRequested(event.source));
        },
        cleared: (event) async {
          emit(const RepairSelectionState.initial());
        },
        permissionsRequested: (event) async {
          try {
            final cameraStatus = await Permission.camera.request();
            //final photosStatus = await Permission.photos.request();

            if (cameraStatus.isGranted /*&& photosStatus.isGranted*/) {
              emit(const RepairSelectionState.permissionsGranted());
            } else {
              emit(
                const RepairSelectionState.permissionsDenied(
                  message:
                      'Se requieren permisos para acceder a la cámara y la galería.',
                ),
              );
            }
          } catch (e) {
            emit(
              RepairSelectionState.permissionsDenied(
                message: 'Error de solicitud de permiso: $e',
              ),
            );
          }
        },
        sendRepairRequest: (event) async {
          try {
            emit(const RepairSelectionState.loading());
            final carInfo = await _repo.sendRepairResponse(
                event.carNumber,
                event.takeCarAccount,
                event.services,
                event.parts,
                event.axis1,
                event.axis2,
                event.photoFileName,
                event.comment,
                event.wpServiceId
            );
            if(carInfo is Success<ServiceRepairResponse>) {
              emit(const RepairSelectionState.successSendRequest());
            } else if(carInfo is Error<ServiceRepairResponse>) {
              emit(RepairSelectionState.error(message: carInfo.errorMessage));
            }
          } catch (e) {
            emit(RepairSelectionState.error(message: 'Error send request: $e'));
          }
        }
      );
    });
  }
}
