import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/alarm/data/repository/alarm_repository.dart';
import '../../../../../../core/data/error/failures.dart';
import '../widgets/alarm_event.dart';
import 'alarm_state.dart';

//part 'alarm_bloc.freezed.dart';

class AlarmBloc extends Bloc<AlarmEvent, AlarmState> {

  final AlarmRepository _repository = AlarmRepository();

  AlarmBloc() : super(const AlarmState()) {

    on<_SednAlarm>((event, emit) async {
      //emit(state.copyWith(isLoading: true, isSuccess: false, errorText: ''));
      final result = await _repository.sendAlarm(null);
      result.fold(
        (failure) {
          final message = failure is ServerFailure && failure.message.isNotEmpty
              ? failure.message
              : 'Unknown error';
         /* emit(state.copyWith(
              isLoading: false, isSuccess: false, errorText: message));*/
        },
        (model) {
          //emit(state.copyWith(isLoading: false, isSuccess: true, errorText: ''));
        },
      );
    });


  }
}
