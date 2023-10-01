import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/constants.dart';

part 'return_procurement_input.freezed.dart';
part 'return_procurement_input.g.dart';

@Freezed(copyWith: false, equal: false)
class ReturnProcurementInput with _$ReturnProcurementInput {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory ReturnProcurementInput(
      {@JsonKey(name: JsonKeyConstant.imeiJsonParamKey) required String imei,
      @JsonKey(name: JsonKeyConstant.physicalCheckJsonParamKey)
      required int physicalCheck,
      @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
      required int userId}) = _ReturnProcurementInput;

  factory ReturnProcurementInput.fromJson(Map<String, dynamic> json) =>
      _$ReturnProcurementInputFromJson(json);
}
