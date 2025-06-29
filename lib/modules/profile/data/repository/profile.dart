import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/singletons/dio.dart';
import 'package:pits_app/core/data/singletons/service_locator.dart';
import 'package:pits_app/modules/profile/data/models/profile_service.dart';
import 'package:pits_app/utils/either.dart';

class ProfileRepository {
  final client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, List<ProfileServiceModel>>> getServices(
      {required String id, required String url}) async {
    final result = await client.get('$url?post=149652');
    print(result.realUri.toString() + 'isCalling');
    print(result.statusCode);
    print(result.data);

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = (result.data as List<dynamic>)
          .map((e) => ProfileServiceModel.fromJson(e))
          .toList();

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<ProfileServiceModel>>> getCarBrands(
      String id) async {
    final result =
        await client.get('wp-json/wp/v2/custom-taxonomy-car-brand?post=149652');
    print(result.realUri.toString() + 'isCalling');
    print(result.statusCode);
    print(result.data);

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = (result.data as List<dynamic>)
          .map((e) => ProfileServiceModel.fromJson(e))
          .toList();

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }
}
