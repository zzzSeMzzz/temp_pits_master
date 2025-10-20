import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = _Loading;

  const factory HomeState.success({
    required List<Vehicle> vehicles,
  }) = _Success;

  const factory HomeState.error({
    required String message,
  }) = _Error;

  const factory HomeState.cleared() = _Cleared;

  const factory HomeState.selectedVehicle({
    required Vehicle vehicle,
  }) = _SelectedVehicle;
}