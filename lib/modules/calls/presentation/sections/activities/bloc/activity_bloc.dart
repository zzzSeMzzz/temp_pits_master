import 'package:bloc/bloc.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/bloc/activity_event.dart';
import 'package:pits_app/modules/calls/presentation/sections/activities/bloc/activity_state.dart';
import '../../../../../../core/data/network/api_response.dart';
import '../data/repository/activity_repository.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {

  final _repo = ActivityRepository();

  ActivityBloc() : super(const ActivityState.initial()) {
    add(const ActivityEvent.loadActivities());

    on<ActivityEvent>((event, emit) async {
      await event.map<Future<void>>(
        cleared: (event) async {
          emit(const ActivityState.cleared());
        },
        loadActivities: (event) async {
        try {
          emit(const ActivityState.loading());
          final activities = await _repo.getAllActivities();
          if(activities is Success<List<AlarmModel>>) {
            emit(ActivityState.success(activities: activities.data));
          } else if(activities is Error<List<AlarmModel>>) {
            emit(ActivityState.error(message: activities.errorMessage));
          }
        } catch (e) {
          emit(ActivityState.error(message: 'Ошибка распознавания фото: $e'));
        }
      }
      );
    });
  }
}
