import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading(bool isLoading) = _Loading;
  const factory LoginState.loginSuccess(LoginEntity loginEntity) = _LoginSuccess;
  const factory LoginState.passwordVisibility(bool isPasswordVisible) = _PasswordVisibility;

  const factory LoginState.loginError(String error) = _LoginError;
}
