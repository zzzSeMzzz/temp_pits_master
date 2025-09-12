import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/bloc/add_car_event.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/bloc/add_car_state.dart';

class AddCarBloc extends Bloc<AddCarEvent, AddCarState> {
  final ImagePicker _imagePicker;

  AddCarBloc({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker(),
        super(const AddCarState.initial()) {
    on<AddCarEvent>((event, emit) async {
      await event.map(
        photoPickerRequested: (e) => _onRequested(e, emit),
        onPhotoSelected: (e) => _onPhotoSelected(e, emit),
        cleared: (e) => _onCleared(e, emit),
        permissionsRequested: (e) => _onPermissionsRequested(e, emit),
      );
    });
  }
}