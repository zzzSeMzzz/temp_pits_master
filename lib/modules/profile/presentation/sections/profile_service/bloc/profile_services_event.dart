part of 'profile_services_bloc.dart';

@freezed
class ProfileServicesEvent with _$ProfileServicesEvent {
  const factory ProfileServicesEvent.getServices() = _GetProfileServices;
}
