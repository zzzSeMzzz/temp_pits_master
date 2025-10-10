import 'package:bloc/bloc.dart';
import 'package:pits_app/modules/alarm/data/repository/alarm_repository.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_event.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_state.dart';
import 'package:pits_app/modules/alarm/details/data/model/insurers.dart';
import 'package:pits_app/modules/alarm/details/data/model/workshop.dart';
import '../../../../../../core/data/error/failures.dart';

class AlarmViewBloc extends Bloc<AlarmViewEvent, AlarmViewState> {

  final AlarmRepository _repository = AlarmRepository();


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
          emit(AlarmViewState.success(insures, workshops, 0, 0));
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
        }
      );
    });
  }
}
