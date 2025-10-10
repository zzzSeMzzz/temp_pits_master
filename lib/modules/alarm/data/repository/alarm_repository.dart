import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/core/data/model/base_response.dart';
import 'package:pits_app/core/data/repo/base_repoitory.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/alarm/details/data/model/insurers.dart';
import 'package:pits_app/modules/alarm/details/data/model/workshop.dart';
import '../../../../../../../core/data/error/failures.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../../../../../../../utils/either.dart';


class AlarmRepository extends BaseRepository {
  final client = serviceLocator<ApiSecondDioSettings>().dio;
  final clientMain = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, BaseResponse>> sendAlarm(AlarmModel alarmModel) async {
    final result = await client.post(
        'api/emergencies/report',
        data: alarmModel.toJson()
    );

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = BaseResponse.fromJson(result.data as Map<String, dynamic>);
      return Right(model);
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }


  Future<Either<Failure, List<Insurers>>> loadInsures() async {
    final result = await clientMain.get(
        'wp-json/pits/v1/insurers',
    );

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = (result.data as List<dynamic>)
        .map((json) => Insurers.fromJson(json as Map<String, dynamic>))
        .toList();
      return Right(model);
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }


  Future<Either<Failure, List<Workshop>>> loadWorkshopsByLocation(LatLng location) async {
    final result = await clientMain.get(
      'wp-json/pits/v1/talleres-ubicacion',
      queryParameters: {
        "lat": location.latitude,
        "lng": location.longitude,
      }
    );

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = (result.data as List<dynamic>)
          .map((json) => Workshop.fromJson(json as Map<String, dynamic>))
          .toList();
      return Right(model);
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }

}
