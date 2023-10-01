import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/entities.dart';

part 'forogot_password_state.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.loading() = _Loading;
  const factory ForgotPasswordState.success(ForgotPasswordEntity forgotPasswordEntity) = _Success;
  const factory ForgotPasswordState.error(String error) = _Error;
}