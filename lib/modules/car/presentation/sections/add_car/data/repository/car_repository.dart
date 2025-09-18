import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/core/data/repo/base_repoitory.dart';
import '../../../../../../../core/data/network/api_response.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../model/photo_model.dart';

class CarRepository extends BaseRepository {

  final _client = serviceLocator<ApiSecondDioSettings>().dio;


  Future<ApiResponse<dynamic>> loadCarImage(PhotoModel photoModel) async {
    try {
      FormData formData = FormData.fromMap({
        "image": await MultipartFile.fromFile(
          photoModel.filePath,
          filename: photoModel.fileName, // The filename to send to the server
          // contentType: MediaType('image', 'jpeg'), // Optional: specify content type
        ),
      });

      final data = await _client.post(
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
      debugPrint("TenderRepository:: failure upload ${e.toString()}");
      return Error(e.toString());
    }
  }

}