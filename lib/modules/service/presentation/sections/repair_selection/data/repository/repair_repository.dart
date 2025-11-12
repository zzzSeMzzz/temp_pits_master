import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pits_app/core/data/extensions.dart';
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
    List<String> parts,
    axis1,
    axis2,
    String? photoFileName,
    String? comment,
    String? wpServiceId,
  ) async {
    try {
      // Создаем FormData вручную для поддержки массивов параметров
      final formData = FormData();

      debugPrint("services count = ${services.length}");
      debugPrint("axis1 count = ${axis1.length}");
      debugPrint("axis2 count = ${axis2.length}");
      debugPrint("parts count = ${parts.length}");

      // Добавляем обычные поля
      if (!wpServiceId.isNullOrEmpty()) {
        formData.fields.add(MapEntry('wp_service_id', wpServiceId ?? ''));
      }
      formData.fields.add(
        const MapEntry('pickup_crane', '1'),
      ); //todo не знаю что это
      formData.fields.add(MapEntry('comment', comment ?? ''));
      formData.fields.add(MapEntry('take_car_account', takeCarAccount));

      // Добавляем каждый элемент services как отдельный параметр services[]
      for (final service in services) {
        formData.fields.add(MapEntry('services[]', service));
      }

      // Добавляем массивы parts, axis1, axis2
      for (final part in parts) {
        formData.fields.add(MapEntry('parts[]', part));
      }
      for (final axis in axis1) {
        formData.fields.add(MapEntry('axis1[]', axis.toString()));
      }
      for (final axis in axis2) {
        formData.fields.add(MapEntry('axis2[]', axis.toString()));
      }

      // Добавляем фото только если photoFileName не null
      if (photoFileName != null) {
        final file = File(photoFileName);
        final fileName = file.path.split('/').last;
        formData.files.add(
          MapEntry(
            'photo',
            await MultipartFile.fromFile(
              photoFileName,
              filename: fileName,
              // contentType: MediaType('image', 'jpeg'), // Optional: specify content type
            ),
          ),
        );
      }

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
