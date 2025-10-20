part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(true) bool isLoginMode,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default('') String errorText,
  }) = _AuthState;
}
