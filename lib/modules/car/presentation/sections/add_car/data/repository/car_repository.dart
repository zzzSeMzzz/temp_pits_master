import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/core/data/repo/base_repoitory.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
import '../../../../../../../core/data/network/api_response.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../model/photo_model.dart';

class CarRepository extends BaseRepository {

  //final _client = serviceLocator<ApiSecondDioSettings>().dio;
  final _service = serviceLocator<ApiSecondDioSettings>();


  Future<ApiResponse<dynamic>> loadCarImage(PhotoModel photoModel) async {
    try {
      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(
          photoModel.filePath,
          filename: photoModel.fileName, // The filename to send to the server
          // contentType: MediaType('image', 'jpeg'), // Optional: specify content type
        ),
      });

      final data = await _service.dio.post(
        "api/scan-plate",
        data: formData,
          /*queryParameters: {
            'limit': limit,
          }*/
      );

      final response = data;//TenderResponse.fromJson(data);
      debugPrint("CarRepository:: success upload image");
      return Success(response);
    } on DioException catch (e) {
      debugPrint("CarRepository:: failure upload image ${e.toString()}");
      return Error(e.message ?? "Failure getTenders");
    } catch (e) {
      debugPrint("CarRepository:: failure upload ${e.toString()}");
      return Error(e.toString());
    }
  }


  Future<ApiResponse<List<Vehicle>>> getAllVehicles() async {
    try {
      final data = await _service.getGetApiResponse(
          "/api/vehicles",
      );

      List<Vehicle> response = (data as List)
          .map((json) => Vehicle.fromJson(json))
          .toList();
      debugPrint("CarRepository:: getAllVehicles success");
      return Success(response);
    } on DioException catch (e) {
      debugPrint("CarRepository:: failure load vehicles ${e.toString()}");
      return Error(e.message ?? "Failure load vehicles");
    } catch (e) {
      debugPrint("CarRepository:: failure load vehicles ${e.toString()}");
      return Error(e.toString());
    }
  }


  Future<ApiResponse<Vehicle>> getVehicleDetails(String registrationNumber) async {
    try {
      final data = await _service.getGetApiResponse(
        "/api/vehicles/$registrationNumber/details",
      );

      Vehicle response =  Vehicle.fromJson(data);
      debugPrint("CarRepository:: getVehicle");
      return Success(response);
    } on DioException catch (e) {
      debugPrint("CarRepository:: failure getVehicle ${e.toString()}");
      return Error(e.message ?? "Failure getVehicle");
    } catch (e) {
      debugPrint("CarRepository:: failure getVehicle ${e.toString()}");
      return Error(e.toString());
    }
  }

}