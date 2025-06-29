part of 'services_bloc.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState({
    @Default([]) List<ServiceEntity> services,
    @Default(ActionStatus.pure) ActionStatus status,

})=_ServicesState;
}
