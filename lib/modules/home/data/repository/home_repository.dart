import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/singletons/dio.dart';
import 'package:pits_app/core/data/singletons/service_locator.dart';
import 'package:pits_app/modules/home/data/model/service.dart';
import 'package:pits_app/modules/home/data/model/service_single.dart';
import 'package:pits_app/utils/either.dart';

class HomeRepository {
  final client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, List<ServiceModel>>> getServices() async {
    final result = await client.get('wp-json/mo/v1/workshop');
    print(result.realUri.toString()+'isCalling');
    print(result.statusCode);
    print(result.data);


    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = (result.data as List<dynamic>)
          .map((e) => ServiceModel.fromJson(e))
          .toList();

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, ServiceSingleModel>> getServiceSingle(String id) async {
    final result = await client.get('wp-json/wp/v2/job_listing/149652');
    print(result.realUri.toString()+'single141');
    print(result.statusCode);
    print(result.data);


    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = ServiceSingleModel.fromJson(result.data);

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }
}
