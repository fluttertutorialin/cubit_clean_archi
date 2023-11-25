// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginInput _$LoginInputFromJson(Map<String, dynamic> json) {
  return _LoginInput.fromJson(json);
}

/// @nodoc
mixin _$LoginInput {
  @JsonKey(name: JsonKeyConstant.mobileJsonParamKey)
  String get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.passwordJsonParamKey)
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$LoginInputImpl implements _LoginInput {
  _$LoginInputImpl(
      {@JsonKey(name: JsonKeyConstant.mobileJsonParamKey) required this.mobile,
      @JsonKey(name: JsonKeyConstant.passwordJsonParamKey)
      required this.password});

  factory _$LoginInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginInputImplFromJson(json);

  @override
  @JsonKey(name: JsonKeyConstant.mobileJsonParamKey)
  final String mobile;
  @override
  @JsonKey(name: JsonKeyConstant.passwordJsonParamKey)
  final String password;

  @override
  String toString() {
    return 'LoginInput(mobile: $mobile, password: $password)';
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginInputImplToJson(
      this,
    );
  }
}

abstract class _LoginInput implements LoginInput {
  factory _LoginInput(
      {@JsonKey(name: JsonKeyConstant.mobileJsonParamKey)
      required final String mobile,
      @JsonKey(name: JsonKeyConstant.passwordJsonParamKey)
      required final String password}) = _$LoginInputImpl;

  factory _LoginInput.fromJson(Map<String, dynamic> json) =
      _$LoginInputImpl.fromJson;

  @override
  @JsonKey(name: JsonKeyConstant.mobileJsonParamKey)
  String get mobile;
  @override
  @JsonKey(name: JsonKeyConstant.passwordJsonParamKey)
  String get password;
}
