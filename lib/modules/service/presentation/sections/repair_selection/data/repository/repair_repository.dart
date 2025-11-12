import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/core/data/repo/base_repoitory.dart';
import '../../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../../core/data/singletons/service_locator.dart';
import '../../../../../../../core/data/network/api_response.dart';
import '../model/service_repair_response.dart';

class RepairRepository extends BaseRepository {
  final _service = serviceLocator<ApiSecondDioSettings>();

  Future<ApiResponse<ServiceRepairResponse>> sendRepairResponse(
    String? carNumber,
    String takeCarAccount,
    Set<String> services,
    List<String> parts, axis1, axis2,
    String? photoFileName,
    String? comment,
    String? wpServiceId,
  ) async {
    try {
      final Map<String, dynamic> formDataMap = {
        'wp_service_id': wpServiceId,
        'pickup_crane': 1, //todo не знаю что это
        'comment': comment ?? '',
        "take_car_account": takeCarAccount,
        'services[]': services.toList(),
        'parts[]': parts,
        'axis1[]': axis1,
        'axis2[]': axis2,
      };

      // Добавляем фото только если photoFileName не null
      if (photoFileName != null) {
        final file = File(photoFileName);
        final fileName = file.path.split('/').last;
        formDataMap['photo'] = await MultipartFile.fromFile(
          photoFileName,
          filename: fileName,
          // contentType: MediaType('image', 'jpeg'), // Optional: specify content type
        );
      }

      var formData = FormData.fromMap(formDataMap);

      final data = await _service.getPostApiResponse(
        "api/proposals/complete",
        formData,
      );

      final response = ServiceRepairResponse.fromJson(data);
      debugPrint("RepairRepository:: sendRepairResponse success");
      return Success(response);
    } on DioException catch (e) {
      debugPrint("RepairRepository:: sendRepairResponse error ${e.toString()}");
      return Error(e.message ?? "sendRepairResponse error");
    } catch (e) {
      debugPrint("RepairRepository:: sendRepairResponse error ${e.toString()}");
      return Error(e.toString());
    }
  }
}
