import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/usecases/usecase.dart';
import 'package:pits_app/modules/home/data/model/service_single.dart';
import 'package:pits_app/modules/home/data/repository/home_repository.dart';
import 'package:pits_app/modules/home/domain/entity/car_service.dart';
import 'package:pits_app/modules/home/domain/entity/service_single_entity.dart';
import 'package:pits_app/utils/either.dart';

class GetServiceSingleUseCase extends UseCase<ServiceSingleEntity,String>{
  final HomeRepository repo=HomeRepository();

  @override
  Future<Either<Failure, ServiceSingleModel>> call(String id)async {
    return await repo.getServiceSingle(id);
  }

}