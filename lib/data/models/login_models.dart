import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/constants.dart';
import '../../domain/entities/entities.dart';
part 'login_models.freezed.dart';
part 'login_models.g.dart';

@freezed
class LoginModels with _$LoginModels {
  const factory LoginModels({
    @JsonKey(name: JsonKeyConstant.userIdJsonKey) int? userId,
    @JsonKey(name: JsonKeyConstant.userNameJsonKey) String? userName,
    @JsonKey(name: JsonKeyConstant.mobileJsonKey) String? mobile,

  }) = _LoginModels;

  const LoginModels._();

  factory LoginModels.fromJson(Map<String, dynamic> json) =>
      _$LoginModelsFromJson(json);
}

extension LoginExtension on LoginModels {
  LoginEntity toDomain() => LoginEntity(
      userId: userId,
      userName: userName, mobile: mobile);
}
