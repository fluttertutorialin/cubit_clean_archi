import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/constants.dart';

part 'login_input.freezed.dart';
part 'login_input.g.dart';

@Freezed(copyWith: false, equal: false)
class LoginInput with _$LoginInput {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory LoginInput(
      {@JsonKey(name: JsonKeyConstant.mobileJsonParamKey)
      required String mobile,
      @JsonKey(name: JsonKeyConstant.passwordJsonParamKey)
      required String password}) = _LoginInput;

  factory LoginInput.fromJson(Map<String, dynamic> json) =>
      _$LoginInputFromJson(json);
}
