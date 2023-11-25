// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_procurement_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnProcurementInput _$ReturnProcurementInputFromJson(
    Map<String, dynamic> json) {
  return _ReturnProcurementInput.fromJson(json);
}

/// @nodoc
mixin _$ReturnProcurementInput {
  @JsonKey(name: JsonKeyConstant.imeiJsonParamKey)
  String get imei => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.physicalCheckJsonParamKey)
  int get physicalCheck => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ReturnProcurementInputImpl implements _ReturnProcurementInput {
  _$ReturnProcurementInputImpl(
      {@JsonKey(name: JsonKeyConstant.imeiJsonParamKey) required this.imei,
      @JsonKey(name: JsonKeyConstant.physicalCheckJsonParamKey)
      required this.physicalCheck,
      @JsonKey(name: JsonKeyConstant.userIdJsonParamKey) required this.userId});

  factory _$ReturnProcurementInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnProcurementInputImplFromJson(json);

  @override
  @JsonKey(name: JsonKeyConstant.imeiJsonParamKey)
  final String imei;
  @override
  @JsonKey(name: JsonKeyConstant.physicalCheckJsonParamKey)
  final int physicalCheck;
  @override
  @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
  final int userId;

  @override
  String toString() {
    return 'ReturnProcurementInput(imei: $imei, physicalCheck: $physicalCheck, userId: $userId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnProcurementInputImplToJson(
      this,
    );
  }
}

abstract class _ReturnProcurementInput implements ReturnProcurementInput {
  factory _ReturnProcurementInput(
      {@JsonKey(name: JsonKeyConstant.imeiJsonParamKey)
      required final String imei,
      @JsonKey(name: JsonKeyConstant.physicalCheckJsonParamKey)
      required final int physicalCheck,
      @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
      required final int userId}) = _$ReturnProcurementInputImpl;

  factory _ReturnProcurementInput.fromJson(Map<String, dynamic> json) =
      _$ReturnProcurementInputImpl.fromJson;

  @override
  @JsonKey(name: JsonKeyConstant.imeiJsonParamKey)
  String get imei;
  @override
  @JsonKey(name: JsonKeyConstant.physicalCheckJsonParamKey)
  int get physicalCheck;
  @override
  @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
  int get userId;
}
