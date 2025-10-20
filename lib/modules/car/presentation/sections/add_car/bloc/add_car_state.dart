import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/data/network/api_response.dart';
import '../data/model/car_reg_response.dart';
import '../data/model/car_scan_info.dart';
import '../data/model/photo_model.dart';
import '../data/model/vehicle.dart';
part 'add_car_state.freezed.dart';

@freezed
abstract class AddCarState with _$AddCarState {
  const factory AddCarState.initial() = _Initial;

  const factory AddCarState.loading() = _Loading;

  const factory AddCarState.success({
    required CarRegResponse vehicle,
  }) = _Success;

  const factory AddCarState.error({
    required String message,
  }) = _Error;

  const factory AddCarState.permissionsGranted() = _PermissionsGranted;

  const factory AddCarState.permissionsDenied({
    required String message,
  }) = _PermissionsDenied;

  const factory AddCarState.cleared() = _Cleared;

  const factory AddCarState.currentCarNumber({
    String? carNumber,
  }) = _CurrentCarNumber;
}