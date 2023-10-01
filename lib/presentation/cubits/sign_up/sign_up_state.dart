import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/entities.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = _Loading;
  const factory SignUpState.success(SignUpEntity signUpEntity) = _Success;
  const factory SignUpState.passwordHide(bool? passwordHide) = _PasswordHide;
  const factory SignUpState.passwordShow(bool? passwordShow) = _PasswordShow;
  const factory SignUpState.error(String error) = _Error;
}