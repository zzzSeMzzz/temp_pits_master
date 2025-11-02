import 'package:flutter_bloc/flutter_bloc.dart';
import 'service_selection_event.dart';
import 'service_selection_state.dart';


class ServiceSelectionBloc
    extends Bloc<ServiceSelectionEvent, ServiceSelectionState> {
  ServiceSelectionBloc() : super(const ServiceSelectionState()) {
    on<ServiceSelectionEvent>((event, emit) {
      event.map(
        toggleService: (event) {
          final selected = Set<String>.from(state.selectedKeys);
          if (selected.contains(event.serviceKey)) {
            selected.remove(event.serviceKey);
          } else {
            selected.add(event.serviceKey);
          }
          emit(state.copyWith(selectedKeys: selected));
        },
        clearSelection: (event) {
          emit(state.copyWith(selectedKeys: {}));
        }
      );
    });
  }
}
