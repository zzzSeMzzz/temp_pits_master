part of 'profile_services_bloc.dart';

@freezed
class ProfileServicesState with _$ProfileServicesState {
  const factory ProfileServicesState({
    @Default([]) List<ProfileServiceEntity> services,
    @Default(ActionStatus.pure) ActionStatus status,
}) = _ProfileServicesState;



}
