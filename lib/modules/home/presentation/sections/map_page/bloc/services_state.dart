part of 'services_bloc.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState({
    @Default([]) List<ServiceCategory> serviceCategories,
    @Default(133) int currentCatId,
    LatLng? currentLocation,
    RegionModel? currentRegion,
    @Default({}) Set<ServiceModel> selectedServices,//выбранные услуги
    @Default([]) List<ServiceModel> allServices,//весь список услуг
    @Default({}) Set<Marker> markers,
    LatLngBounds? visibleRegion,
    @Default(ActionStatus.pure) ActionStatus status,
    @Default(false) bool loadCarServices,//отдельный прогресс на загрузку сервисов по критериям
    @Default(false) bool showModal,
    int? selectedServiceId,
})=_ServicesState;
}
