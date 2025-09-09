import 'package:bloc/bloc.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/modules/alarm/data/repository/alarm_repository.dart';
import '../../../../../../core/data/error/failures.dart';
import 'alarm_event.dart';
import 'alarm_state.dart';

class AlarmBloc extends Bloc<AlarmEvent, AlarmState> {

  final AlarmRepository _repository = AlarmRepository();


  AlarmBloc() : super(AlarmState()) {
    on<AlarmEvent>((event, emit) async {
      await event.map(
        sendAlarm: (event) async {
          emit(state.copyWith(responseState: const Loading()));
          final result = await _repository.sendAlarm(event.model);
          result.fold(
            (failure) {
              final message = failure is ServerFailure &&
                  failure.message.isNotEmpty
                  ? failure.message
                  : 'Unknown error';
              emit(state.copyWith(responseState: Error(message)));
            },
            (model) {
              emit(state.copyWith(responseState: Success(model)));
            },
          );
        },
        selectAlarm: (event) async {
          emit(state.copyWith(selectedAlarm: event.alarm));
        },
        setStartEngine: (event) async {
          emit(state.copyWith(isStartEngine: event.isStart));
        },
        setPage: (event) async {
          emit(state.copyWith(currentPage: event.pageIndex));
        },
        setCurrentPosition: (event) async {
          emit(state.copyWith(currentPosition: event.position));
        },
        resetState: (event) async {
          emit(state.copyWith(responseState: const Init()));
        },
        setLoading: (event) async {
          emit(state.copyWith(responseState: const Loading()));
        },
      );
    });
  }
}
