import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';
import 'package:pits_app/modules/home/domain/usecase/get_services.dart';
import 'package:pits_app/utils/action_status.dart';

part 'services_event.dart';

part 'services_state.dart';

part 'services_bloc.freezed.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final GetServicesUseCase getServicesUseCase;

  ServicesBloc(this.getServicesUseCase) : super(const ServicesState()) {
    on<_GetServices>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.inProcess));

      final result = await getServicesUseCase('');
      if (result.isRight) {
        debugPrint("Success get services");
        emit(state.copyWith(
            status: ActionStatus.isSuccess, services: result.right.toList()));
      } else {
        debugPrint("Failure get services");
        emit(state.copyWith(status: ActionStatus.isFailure));
      }
    });
  }
}
