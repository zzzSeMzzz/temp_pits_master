part of 'services_bloc.dart';

@freezed
class ServicesEvent with _$ServicesEvent {
  const factory ServicesEvent.getServices(
      {@Default(0) int catId,
      RegionModel? region,
      @Default({}) Set<int> serviceIds}) = _GetServices;

  const factory ServicesEvent.getServiceCategories() = _GetServiceCategories;

  const factory ServicesEvent.setMyLocation(LatLng? latLng) = _SetMyLocation;

  const factory ServicesEvent.showModal(int serviceId) = _ShowModal;
}
