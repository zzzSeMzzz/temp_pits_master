import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.cleared() = _Cleared;
  const factory HomeEvent.loadVehicles() = _LoadVehicles;
}