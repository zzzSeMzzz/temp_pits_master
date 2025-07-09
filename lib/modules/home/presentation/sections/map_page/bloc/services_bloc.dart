import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/modules/home/domain/entity/service.dart';
import 'package:pits_app/modules/home/domain/usecase/get_services.dart';
import 'package:pits_app/utils/action_status.dart';

import '../../../../../../assets/constants/app_images.dart';

part 'services_event.dart';

part 'services_state.dart';

part 'services_bloc.freezed.dart';

class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  final GetServicesUseCase getServicesUseCase;

  ServicesBloc(this.getServicesUseCase) : super(const ServicesState()) {
    debugPrint('ServicesBloc constructor');
    on<_GetServices>(_onGetServices);

    _loadIcon();

    // Автоматический запуск загрузки сервисов при создании блока
    //add(const ServicesEvent.getServices());
    Future.microtask(() {
      debugPrint('Microtask: add getServices');
      add(const ServicesEvent.getServices());
    });
  }

  late BitmapDescriptor _markerIcon;

  void _loadIcon() async {
    _markerIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(), AppImages.wrenchLocation);
  }

  FutureOr<void> _onGetServices(
      ServicesEvent event, Emitter<ServicesState> emit) async {
    debugPrint("Run get services");
    emit(state.copyWith(status: ActionStatus.inProcess));

    final result = await getServicesUseCase('');
    if (result.isRight) {
      debugPrint("Success get services  [33m");
      final services = result.right;
      const batchSize = 200;
      Set<Marker> allMarkers = {};
      for (int i = 0; i < services.length; i += batchSize) {
        final batch = services.skip(i).take(batchSize);
        allMarkers
            .addAll(batch.map((service) => service.toMarker(_markerIcon)));
        emit(
          state.copyWith(
            status: ActionStatus.isSuccess,
            markers: Set<Marker>.from(allMarkers),
          ),
        );
        await Future.delayed(const Duration(milliseconds: 50));
      }
    } else {
      debugPrint("Failure get services");
      emit(state.copyWith(status: ActionStatus.isFailure));
    }
  }

  /*FutureOr<void> _onGetServices(ServicesEvent event, Emitter<ServicesState> emit) async {
    debugPrint("Run get services");
    emit(state.copyWith(status: ActionStatus.inProcess));

    final result = await getServicesUseCase('');
    if (result.isRight) {
      debugPrint("Success get services ${result.right.length}");
      emit(
        state.copyWith(
          status: ActionStatus.isSuccess,
          markers: Set<Marker>.of(result.right.map((service) => service.toMarker(_markerIcon)))
      ));
    } else {
      debugPrint("Failure get services");
      emit(state.copyWith(status: ActionStatus.isFailure));
    }
  }*/
}
