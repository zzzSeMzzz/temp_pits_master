import 'package:pits_app/core/data/repo/base_repoitory.dart';
import '../../../../../../../core/data/error/failures.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../../../../../../../utils/either.dart';
import '../model/profile.dart';


class UserProfileRepository extends BaseRepository {
  final client = serviceLocator<ApiSecondDioSettings>().dio;

  Future<Either<Failure, User>> loadUserProfile() async {
    final result = await client.get(
        'api/pits/perfil',
    );
    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = ProfileResponse.fromJson(result.data as Map<String, dynamic>);
      if(model.user!=null) {
        return Right(model.user!);
      } else {
        return Left(ServerFailure(message: getErrorFromResponse(result.data)));
      }
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }

  Future<Either<Failure, bool>> removeProfile() async {
    final result = await client.delete(
      'api/pits/account',
    );
    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = ProfileResponse.fromJson(result.data as Map<String, dynamic>);
      if(model.user!=null) {
        return Right(true);
      } else {
        return Left(ServerFailure(message: getErrorFromResponse(result.data)));
      }
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }

}
