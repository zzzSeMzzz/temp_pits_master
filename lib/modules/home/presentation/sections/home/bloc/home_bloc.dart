import 'package:bloc/bloc.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/repository/car_repository.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_state.dart';
import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final _repo = CarRepository();

  HomeBloc() : super(const HomeState.initial()) {

    on<HomeEvent>((event, emit) async {
      await event.map(
        cleared: (event) {
          emit(const HomeState.cleared());
        },
        loadVehicles: (event) async {
          if (StorageRepository.isAuth()) {
            emit(const HomeState.loading());
            final response = await _repo.getAllVehicles();
            if (response is Error<List<Vehicle>>) {
              emit(HomeState.error(message: response.errorMessage));
            } else if (response is Success<List<Vehicle>>) {
              emit(HomeState.success(vehicles: response.data));
              if(response.data.isNotEmpty) {
                emit(HomeState.selectedVehicle(vehicle: response.data.first));
              }
            }
          }
        },
        onSelectVehicle: (event) async {
          emit(HomeState.selectedVehicle(vehicle: event.vehicle));
        }
      );
    });

    add(const HomeEvent.loadVehicles());
  }
}
