part of 'services_bloc.dart';

@freezed
class ServicesEvent with _$ServicesEvent {

  const factory ServicesEvent.getServices() = _GetServices;

  const factory ServicesEvent.getServiceCategories() = _GetServiceCategories;
}
