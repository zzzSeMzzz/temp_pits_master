import 'package:bloc/bloc.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/repository/car_repository.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_state.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final _repo = CarRepository();

  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      await event.map<Future<void>>(
        cleared: (event) async {
          emit(const HomeState.cleared());
        },
      );
    });
  }
}
