import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../core/data/error/failures.dart';
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
      emit(state.copyWith(isLoading: true, isSuccess: false, errorText: ''));
      final result = await _repository.auth(event.email, event.password);
      result.fold(
        (failure) {
          final message = failure is ServerFailure && failure.message.isNotEmpty
              ? failure.message
              : 'Unknown error';
          emit(state.copyWith(
              isLoading: false, isSuccess: false, errorText: message));
        },
        (model) {
          emit(
              state.copyWith(isLoading: false, isSuccess: true, errorText: ''));
        },
      );
    });

    on<_Register>((event, emit) async {
      emit(state.copyWith(isLoading: true, isSuccess: false, errorText: ''));
      final result = await _repository.reg(
        event.firstname,
        event.lastname,
        event.email,
        event.phone,
        event.password,
      );
      result.fold(
        (failure) {
          final message = failure is ServerFailure && failure.message.isNotEmpty
              ? failure.message
              : 'Unknown error';
          emit(state.copyWith(
              isLoading: false, isSuccess: false, errorText: message));
        },
        (model) {
          emit(
              state.copyWith(isLoading: false, isSuccess: true, errorText: ''));
        },
      );
    });

    on<_ClearError>((event, emit) {
      emit(state.copyWith(errorText: ''));
    });
  }
}
