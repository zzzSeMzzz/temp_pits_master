import 'package:bloc/bloc.dart';
import 'package:pits_app/modules/alarm/data/repository/alarm_repository.dart';
import '../../../../../../core/data/error/failures.dart';
import 'alarm_event.dart';
import 'alarm_state.dart';

//part 'alarm_bloc.freezed.dart';

class AlarmBloc extends Bloc<AlarmEvent, AlarmState> {

  final AlarmRepository _repository = AlarmRepository();

  AlarmBloc() : super(AlarmState()) {

    on<AlarmEvent>((event, emit) async {
      await event.map(
        sendAlarm: (event) async {
          final result = await _repository.sendAlarm(event.model);
          result.fold(
                (failure) {
              final message = failure is ServerFailure && failure.message.isNotEmpty
                  ? failure.message
                  : 'Unknown error';
              // emit error state
            },
                (model) {
              // emit success state
            },
          );
        },
      );
    });


  }
}
