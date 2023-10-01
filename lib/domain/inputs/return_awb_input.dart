import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/constants.dart';

part 'return_awb_input.freezed.dart';
part 'return_awb_input.g.dart';

@Freezed(copyWith: false, equal: false)
class ReturnAwbInput with _$ReturnAwbInput {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ReturnAwbInput(
      {@JsonKey(name: JsonKeyConstant.awbNumberJsonParamKey)
      required String awbNumber,
      @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
      required int userId}) = _ReturnAwbInput;

  factory ReturnAwbInput.fromJson(Map<String, dynamic> json) =>
      _$ReturnAwbInputFromJson(json);
}
