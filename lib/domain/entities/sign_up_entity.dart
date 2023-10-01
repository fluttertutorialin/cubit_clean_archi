import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_entity.freezed.dart';

@freezed
class SignUpEntity with _$SignUpEntity {
  const factory SignUpEntity({
    final String? userId,
    final String? userName,
    final String? email,
    final String? mobile
  }) = _SignUpEntity;

  const SignUpEntity._();
}