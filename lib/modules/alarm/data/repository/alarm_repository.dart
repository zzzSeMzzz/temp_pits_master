import 'package:pits_app/core/data/model/base_response.dart';
import 'package:pits_app/core/data/repo/base_repoitory.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import '../../../../../../../core/data/error/failures.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../../../../../../../utils/either.dart';


class AlarmRepository extends BaseRepository {
  final client = serviceLocator<AuthDioSettings>().dio;

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

}
