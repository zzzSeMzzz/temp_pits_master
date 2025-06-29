import 'package:pits_app/core/data/error/failures.dart';
import 'package:pits_app/core/data/usecases/usecase.dart';
import 'package:pits_app/modules/profile/data/repository/profile.dart';
import 'package:pits_app/modules/profile/domain/entity/profile_service.dart';
import 'package:pits_app/utils/either.dart';

class GetProfileServices extends UseCase<List<ProfileServiceEntity>, ProfileServiceParams> {
  final ProfileRepository repository;

  GetProfileServices({required this.repository});

  @override
  Future<Either<Failure, List<ProfileServiceEntity>>> call(ProfileServiceParams param) {
    return repository.getServices(url: param.url,id: param.id);
  }
}

class ProfileServiceParams {
  final String url ;
  final String id ;
  ProfileServiceParams({
    required this.id,required this.url,
});
}
