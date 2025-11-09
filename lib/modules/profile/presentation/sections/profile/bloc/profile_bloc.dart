import 'package:bloc/bloc.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/bloc/profile_event.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/bloc/profile_state.dart';
import '../../../../../../core/data/error/failures.dart';
import '../data/model/profile.dart';
import '../data/repository/user_profile_repository.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {

  final UserProfileRepository _repository = UserProfileRepository();

  User? _currentUser;

  ProfileBloc() : super(const ProfileState.loading()) {
    on<ProfileEvent>((event, emit) async {
      await event.map(
        load: (event) async {
          emit(const ProfileState.loading());
          final resultInsures = await _repository.loadUserProfile();
          resultInsures.fold(
            (failure) {
              final message = failure is ServerFailure &&
                  failure.message.isNotEmpty
                  ? failure.message
                  : 'Unknown error';
              emit(ProfileState.error(message));
              return;
            },
            (model) {
              _currentUser = model;
              emit(ProfileState.success(model, false));
            },
          );
        },
        removeProfile: (event) async {
          emit(const ProfileState.loading());

          final resultInsures = await _repository.removeProfile();
          resultInsures.fold(
                (failure) {
              final message = failure is ServerFailure &&
                  failure.message.isNotEmpty
                  ? failure.message
                  : 'Unknown error';
              emit(ProfileState.error(message));
              return;
            },
            (model) {
              emit(ProfileState.success(_currentUser ?? User(), true));
            },
          );
        }
      );
    });

    add(const ProfileEvent.load());
  }

}
