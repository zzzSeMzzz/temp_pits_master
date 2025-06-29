part of 'service_single_bloc.dart';

@freezed
class ServiceSingleState with _$ServiceSingleState {
  const factory ServiceSingleState({
    @Default(ServiceSingleEntity()) ServiceSingleEntity serviceSingle ,
    @Default(ActionStatus.pure) ActionStatus actionStatus ,
}) = _ServiceSingleState;
}
