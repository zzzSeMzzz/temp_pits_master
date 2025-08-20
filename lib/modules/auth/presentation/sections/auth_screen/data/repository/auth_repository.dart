import 'package:pits_app/core/data/repo/base_repoitory.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import '../../../../../../../core/data/error/failures.dart';
import '../../../../../../../core/data/singletons/dio.dart';
import '../../../../../../../core/data/singletons/service_locator.dart';
import '../../../../../../../utils/either.dart';
import '../model/auth_model.dart';

class AuthRepository extends BaseRepository {
  final client = serviceLocator<AuthDioSettings>().dio;

  Future<Either<Failure, AuthModel>> auth(String login, String password) async {
    final result = await client
        .post('api/pits/login', data: {"email": login, "password": password});

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = AuthModel.fromJson(result.data as Map<String, dynamic>);

      // Сохраняем токен доступа, если он есть
      await StorageRepository.putString(
          StorageRepository.accessTokenKey, model.token);

      return Right(model);
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }



  Future<Either<Failure, AuthModel>> reg(String firstname, String lastname,
      String email, String phone, String password) async {
    final result = await client.post('api/pits/register', data: {
      "firstname": firstname,
      "lastname": lastname,
      "email": email,
      "phone": phone,
      "password": password
    });

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final model = AuthModel.fromJson(result.data as Map<String, dynamic>);
      await StorageRepository.putString(
          StorageRepository.accessTokenKey, model.token);
      return Right(model);
    } else {
      return Left(ServerFailure(message: getErrorFromResponse(result.data)));
    }
  }
}
