import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/constants.dart';
import '../../domain/entities/entities.dart';
part 'return_model.freezed.dart';
part 'return_model.g.dart';

@freezed
class ReturnModel with _$ReturnModel {
  const factory ReturnModel(
          {@JsonKey(name: JsonKeyConstant.statusCodeJsonKey) String? code,
          @JsonKey(name: JsonKeyConstant.messageJsonKey) String? message}) =
      _ReturnModel;

  const ReturnModel._();

  factory ReturnModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnModelFromJson(json);
}

extension ReturnExtension on ReturnModel {
  ReturnEntity toDomain() => ReturnEntity(code: code, message: message);
}
