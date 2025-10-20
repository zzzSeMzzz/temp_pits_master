import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/core/data/repo/base_repoitory.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import '../../../../../../../core/data/network/api_response.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../model/activity_response.dart';


class ActivityRepository extends BaseRepository {

  final _service = serviceLocator<ApiSecondDioSettings>();

  Future<ApiResponse<List<AlarmModel>>> getAllActivities() async {
    try {
      final data = await _service.getGetApiResponse("/api/emergencies");

      final activityResponse = ActivityResponse.fromJson(data);
      debugPrint("ActivityRepository:::: getAllVehicles success");
      return Success(activityResponse.data ?? []);
    } on DioException catch (e) {
      debugPrint("ActivityRepository:::: failure load vehicles ${e.toString()}");
      return Error(e.message ?? "Failure load vehicles");
    } catch (e) {
      debugPrint("ActivityRepository:::: failure load vehicles ${e.toString()}");
      return Error(e.toString());
    }
  }

  Future<ApiResponse<AlarmModel>> getActivityById(
      int id,
      ) async {
    try {
      final data = await _service.getGetApiResponse(
        "/api/emergencies/$id",
      );

      final response = AlarmModel.fromJson(data);
      debugPrint("ActivityRepository:::: getVehicle");
      return Success(response);
    } on DioException catch (e) {
      debugPrint("ActivityRepository:::: failure getVehicle ${e.toString()}");
      return Error(e.message ?? "Failure getVehicle");
    } catch (e) {
      debugPrint("ActivityRepository:::: failure getVehicle ${e.toString()}");
      return Error(e.toString());
    }
  }

}
