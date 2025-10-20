import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.cleared() = _Cleared;
  const factory HomeEvent.loadVehicles() = _LoadVehicles;
  const factory HomeEvent.onSelectVehicle(Vehicle vehicle) = _OnSelectVehicle;
}