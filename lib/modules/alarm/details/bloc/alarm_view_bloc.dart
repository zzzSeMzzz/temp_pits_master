import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:pits_app/modules/alarm/data/model/call_request.dart';
import 'package:pits_app/modules/alarm/data/repository/alarm_repository.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_event.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_state.dart';
import 'package:pits_app/modules/alarm/details/data/model/insurers.dart';
import 'package:pits_app/modules/alarm/details/data/model/workshop.dart';
import '../../../../../../core/data/error/failures.dart';

class AlarmViewBloc extends Bloc<AlarmViewEvent, AlarmViewState> {

  final AlarmRepository _repository = AlarmRepository();
  Timer? _timer;
  DateTime? _alarmTimestamp;


  AlarmViewBloc() : super(const AlarmViewState.initial()) {
    on<AlarmViewEvent>((event, emit) async {
      await event.map(
        load: (event) async {
          emit(const AlarmViewState.loading());
          final resultInsures = await _repository.loadInsures();
          final resultWorkShops = await _repository.loadWorkshopsByLocation(event.latLng);
          List<Insurers> insures = [];
          List<Workshop> workshops = [];
          resultInsures.fold(
            (failure) {
              final message = failure is ServerFailure &&
                  failure.message.isNotEmpty
                  ? failure.message
                  : 'Unknown error';
              emit(AlarmViewState.error(message));
              return;
            },
            (model) {
              insures = model;
            },
          );
          resultWorkShops.fold(
                (failure) {
              final message = failure is ServerFailure &&
                  failure.message.isNotEmpty
                  ? failure.message
                  : 'Unknown error';
              emit(AlarmViewState.error(message));
              return;
            },
                (model) {
              workshops = model;
            },
          );
          //emit(AlarmViewState.success(insures, workshops, 0, 0, ));
          // Сохраняем timestamp и запускаем таймер
          _alarmTimestamp = event.alarmTimestamp;
          _startTimer(emit, insures, workshops);
        },
        setPageInsures: (event) {
          if(state is AlarmViewSuccess) {
            final currentState = state as AlarmViewSuccess;
            emit(currentState.copyWith(pageInsures: event.page));
          }
        },
        setPageWorkshops: (event) {
          if(state is AlarmViewSuccess) {
            final currentState = state as AlarmViewSuccess;
            emit(currentState.copyWith(pageWorkShop: event.page));
          }
        },
          updateTimer: (event) {
            if (state is AlarmViewSuccess && _alarmTimestamp != null) {
              final currentState = state as AlarmViewSuccess;
              final elapsedTime = _calculateElapsedTime(_alarmTimestamp!);
              emit(currentState.copyWith(elapsedTime: elapsedTime));
            }
          },
        callRequest: (event) async {
          if(state is AlarmViewSuccess) {
            final currentState = state as AlarmViewSuccess;
            emit(currentState.copyWith(callRequestLoading: true));

            final resulCall = await _repository.callRequest(CallRequest(reportId: event.reportId));
            resulCall.fold(
                (failure) {
                  emit(currentState.copyWith(callRequestLoading: false));
                },
                (model) {
                  emit(currentState.copyWith(callRequestLoading: false));
                },
            );
          }
        }
      );
    });
  }


  void _startTimer(Emitter<AlarmViewState> emit, List<Insurers> insures, List<Workshop> workshops) {
    // Останавливаем предыдущий таймер если есть
    _timer?.cancel();

    // Рассчитываем начальное время
    final initialElapsedTime = _calculateElapsedTime(_alarmTimestamp!);

    // Эмитим начальное состояние
    emit(AlarmViewState.success(insures, workshops, 0, 0, initialElapsedTime, false));

    // Запускаем таймер
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_alarmTimestamp != null) {
        final elapsedTime = _calculateElapsedTime(_alarmTimestamp!);
        add(const AlarmViewEvent.updateTimer());
      }
    });
  }

  String _calculateElapsedTime(DateTime alarmTimestamp) {
    final now = DateTime.now();
    final difference = now.difference(alarmTimestamp);

    final hours = difference.inHours.remainder(24).toString().padLeft(2, '0');
    final minutes = difference.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = difference.inSeconds.remainder(60).toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
