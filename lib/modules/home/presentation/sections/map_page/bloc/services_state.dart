part of 'services_bloc.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState({
    @Default([]) List<ServiceCategory> serviceCategories,
    @Default(133) int currentCatId,
    @Default([]) List<ServiceEntity> services,
    @Default({}) Set<Marker> markers,
    @Default(ActionStatus.pure) ActionStatus status,

})=_ServicesState;
}
