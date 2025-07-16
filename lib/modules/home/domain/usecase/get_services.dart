import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/usecases/usecase.dart';
import 'package:pits_app/modules/home/data/model/region.dart';
import 'package:pits_app/modules/home/data/model/service.dart';
import 'package:pits_app/modules/home/data/repository/home_repository.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/domain/entity/service_category.dart';
import 'package:pits_app/utils/either.dart';

class GetServicesUseCase extends UseCase<List<CarServiceEntity>, String>{
  final HomeRepository repo = HomeRepository();

  @override
  Future<Either<Failure, List<CarServiceEntity>>> call(String params) async {
    return await repo.getCarServices(params);
  }

  Future<Either<Failure, List<ServiceCategory>>> getServiceCategories() async {
    return await repo.getServiceCategories();
  }

  Future<Either<Failure, List<RegionModel>>> getRegions() async {
    return await repo.getAllRegions();
  }


  Future<Either<Failure, List<ServiceModel>>> getServices() async {
    return await repo.getAllServices();
  }

}