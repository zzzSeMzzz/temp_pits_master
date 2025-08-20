part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.changeMode() = _ChangeMode;
  const factory AuthEvent.login(
      {required String email, required String password}) = _Login;
  const factory AuthEvent.register({
    required String firstname,
    required String lastname,
    required String email,
    required String phone,
    required String password,
  }) = _Register;
  const factory AuthEvent.clearError() = _ClearError;
}
