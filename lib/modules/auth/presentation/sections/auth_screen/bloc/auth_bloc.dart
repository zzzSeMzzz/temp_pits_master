import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository = AuthRepository();

  AuthBloc() : super(const AuthState()) {
    on<_ChangeMode>((event, emit) {
      emit(state.copyWith(isLoginMode: !state.isLoginMode));
    });

    on<_Login>((event, emit) async {
      emit(state.copyWith(isLoading: true, isSuccess: false));
      final result = await _repository.auth(event.email, event.password);
      result.fold(
        (failure) => emit(state.copyWith(isLoading: false, isSuccess: false)),
        (model) => emit(state.copyWith(isLoading: false, isSuccess: true)),
      );
    });

    on<_Register>((event, emit) async {
      emit(state.copyWith(isLoading: true, isSuccess: false));
      final result = await _repository.reg(
        event.firstname,
        event.lastname,
        event.email,
        event.phone,
        event.password,
      );
      result.fold(
        (failure) => emit(state.copyWith(isLoading: false, isSuccess: false)),
        (model) => emit(state.copyWith(isLoading: false, isSuccess: true)),
      );
    });
  }
}
