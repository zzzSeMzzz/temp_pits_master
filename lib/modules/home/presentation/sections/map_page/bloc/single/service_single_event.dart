part of 'service_single_bloc.dart';

@freezed
class ServiceSingleEvent with _$ServiceSingleEvent {
  const factory ServiceSingleEvent.getSingleService({required String id }) = _GetSingleService;
}
