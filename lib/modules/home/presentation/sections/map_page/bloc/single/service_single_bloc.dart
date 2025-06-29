import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';
import 'package:pits_app/modules/home/domain/entity/service_single_entity.dart';
import 'package:pits_app/modules/home/domain/usecase/get_single_service.dart';
import 'package:pits_app/utils/action_status.dart';

part 'service_single_event.dart';

part 'service_single_state.dart';

part 'service_single_bloc.freezed.dart';

class ServiceSingleBloc extends Bloc<ServiceSingleEvent, ServiceSingleState> {
  final GetServiceSingleUseCase getSingle;

  ServiceSingleBloc({required this.getSingle})
      : super(const ServiceSingleState()) {
    on<ServiceSingleEvent>((event, emit) async {
      emit(state.copyWith(actionStatus: ActionStatus.inProcess));
      final result = await getSingle(event.id);
      if (result.isRight) {
        print('successSingle');
        emit(state.copyWith(
            serviceSingle: result.right, actionStatus: ActionStatus.isSuccess));
      } else {
        print('failSingle');
        emit(state.copyWith(actionStatus: ActionStatus.isFailure));
      }
    });
  }
}
