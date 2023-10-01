import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_entity.freezed.dart';

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    final int? userId,
    final String? userName,
    final String? mobile,
  }) = _LoginEntity;

  const LoginEntity._();
}
