import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_entity.freezed.dart';

@freezed
class ForgotPasswordEntity with _$ForgotPasswordEntity {
  const factory ForgotPasswordEntity({
    final bool? isSignUp,
  }) = _ForgotPasswordEntity;

  const ForgotPasswordEntity._();
}