import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/assets/constants/app_constants.dart';
import 'package:pits_app/assets/constants/app_urls.dart';
import 'package:pits_app/modules/profile/domain/entity/profile_service.dart';
import 'package:pits_app/modules/profile/domain/use_case/get_profile_services.dart';
import 'package:pits_app/utils/action_status.dart';

part 'profile_services_event.dart';

part 'profile_services_state.dart';

part 'profile_services_bloc.freezed.dart';

class ProfileServicesBloc
    extends Bloc<ProfileServicesEvent, ProfileServicesState> {
  final GetProfileServices getServices;
  final String id;
  final String url;

  ProfileServicesBloc(
    this.getServices, {
    required this.id,
    required this.url,
  }) : super(const ProfileServicesState()) {
    on<_GetProfileServices>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.inProcess));

      final result = await getServices(
          ProfileServiceParams(id: id, url: url));

      if (result.isRight) {
        emit(state.copyWith(
            status: ActionStatus.isSuccess, services: result.right));
      } else {
        emit(state.copyWith(status: ActionStatus.isSuccess));
      }
    });
  }
}
