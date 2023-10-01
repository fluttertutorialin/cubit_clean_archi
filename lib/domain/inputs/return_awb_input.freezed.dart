// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_awb_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnAwbInput _$ReturnAwbInputFromJson(Map<String, dynamic> json) {
  return _ReturnAwbInput.fromJson(json);
}

/// @nodoc
mixin _$ReturnAwbInput {
  @JsonKey(name: JsonKeyConstant.awbNumberJsonParamKey)
  String get awbNumber => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ReturnAwbInput implements _ReturnAwbInput {
  _$_ReturnAwbInput(
      {@JsonKey(name: JsonKeyConstant.awbNumberJsonParamKey)
      required this.awbNumber,
      @JsonKey(name: JsonKeyConstant.userIdJsonParamKey) required this.userId});

  factory _$_ReturnAwbInput.fromJson(Map<String, dynamic> json) =>
      _$$_ReturnAwbInputFromJson(json);

  @override
  @JsonKey(name: JsonKeyConstant.awbNumberJsonParamKey)
  final String awbNumber;
  @override
  @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
  final int userId;

  @override
  String toString() {
    return 'ReturnAwbInput(awbNumber: $awbNumber, userId: $userId)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReturnAwbInputToJson(
      this,
    );
  }
}

abstract class _ReturnAwbInput implements ReturnAwbInput {
  factory _ReturnAwbInput(
      {@JsonKey(name: JsonKeyConstant.awbNumberJsonParamKey)
      required final String awbNumber,
      @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
      required final int userId}) = _$_ReturnAwbInput;

  factory _ReturnAwbInput.fromJson(Map<String, dynamic> json) =
      _$_ReturnAwbInput.fromJson;

  @override
  @JsonKey(name: JsonKeyConstant.awbNumberJsonParamKey)
  String get awbNumber;
  @override
  @JsonKey(name: JsonKeyConstant.userIdJsonParamKey)
  int get userId;
}
