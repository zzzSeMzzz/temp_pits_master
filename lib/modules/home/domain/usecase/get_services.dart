import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/usecases/usecase.dart';
import 'package:pits_app/modules/home/data/repository/home_repository.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';
import 'package:pits_app/utils/either.dart';

class GetServicesUseCase extends UseCase<List<ServiceEntity>,String>{
  final HomeRepository repo=HomeRepository();

  @override
  Future<Either<Failure, List<ServiceEntity>>> call(String params)async {
  return await repo.getServices();
  }

}