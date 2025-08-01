import 'package:flutter/foundation.dart';
import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/singletons/dio.dart';
import 'package:pits_app/core/data/singletons/service_locator.dart';
import 'package:pits_app/modules/home/data/model/region.dart';
import 'package:pits_app/modules/home/data/model/car_service.dart';
import 'package:pits_app/modules/home/data/model/service.dart';
import 'package:pits_app/modules/home/data/model/service_category.dart';
import 'package:pits_app/modules/home/data/model/service_single.dart';
import 'package:pits_app/utils/either.dart';

class HomeRepository {
  final client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, List<CarServiceModel>>> getCarServices(String params) async {
    //final result = await client.get('wp-json/pits/v1/talleres-por-categoria/$catId');
    final result = await client.get('wp-json/pits/v1/talleres-filtrados$params');
    debugPrint('${result.realUri} isCalling');
    debugPrint(result.statusCode.toString());
    //debugPrint(result.data);

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = (result.data as List<dynamic>)
          .map((e) => CarServiceModel.fromJson(e))
          .toList();

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }


  Future<Either<Failure, List<ServiceCategoryModel>>> getServiceCategories() async {
    final result = await client.get('/wp-json/pits/v1/categorias-talleres?per_page=100');
    debugPrint('${result.realUri} isCalling');
    debugPrint(result.statusCode.toString());

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = (result.data as List<dynamic>)
          .map((e) => ServiceCategoryModel.fromJson(e))
          .toList();

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }


  Future<Either<Failure, List<RegionModel>>> getAllRegions() async {
    final result = await client.get('/wp-json/pits/v1/talleres-por-region');
    debugPrint('${result.realUri} isCalling');
    debugPrint(result.statusCode.toString());

    if (result.statusCode! >= 200 && result.statusCode! < 300) {
      final data = (result.data as List<dynamic>)
          .map((e) => RegionModel.fromJson(e))
          .toList();

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<ServiceModel>>> getAllServices() async {
    final result = await client.get('/wp-json/pits/v1/talleres-por-servicio');
    debugPrint('${result.realUri} isCalling');
    debugPrint(result.statusCode.toString());

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
    final result = await client.get('wp-json/wp/v2/job_listing/$id');
    debugPrint('${result.realUri} is calling');
    debugPrint(result.statusCode.toString());

    if (result.statusCode! >= 200 && result.statusCode! < 300) {

      if (result.data is Map<String, dynamic>) {
        final data = ServiceSingleModel.fromJson(result.data as Map<String, dynamic>);
        return Right(data);
      } else {
        debugPrint('Unexpected data type: ${result.data.runtimeType}');
        return Left(ServerFailure());
      }

      final data = ServiceSingleModel.fromJson(result.data);

      return Right(data);
    } else {
      return Left(ServerFailure());
    }
  }
}
