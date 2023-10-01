// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginModels _$LoginModelsFromJson(Map<String, dynamic> json) {
  return _LoginModels.fromJson(json);
}

/// @nodoc
mixin _$LoginModels {
  @JsonKey(name: JsonKeyConstant.userIdJsonKey)
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.userNameJsonKey)
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.mobileJsonKey)
  String? get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginModelsCopyWith<LoginModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelsCopyWith<$Res> {
  factory $LoginModelsCopyWith(
          LoginModels value, $Res Function(LoginModels) then) =
      _$LoginModelsCopyWithImpl<$Res, LoginModels>;
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeyConstant.userIdJsonKey) int? userId,
      @JsonKey(name: JsonKeyConstant.userNameJsonKey) String? userName,
      @JsonKey(name: JsonKeyConstant.mobileJsonKey) String? mobile});
}

/// @nodoc
class _$LoginModelsCopyWithImpl<$Res, $Val extends LoginModels>
    implements $LoginModelsCopyWith<$Res> {
  _$LoginModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginModelsCopyWith<$Res>
    implements $LoginModelsCopyWith<$Res> {
  factory _$$_LoginModelsCopyWith(
          _$_LoginModels value, $Res Function(_$_LoginModels) then) =
      __$$_LoginModelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeyConstant.userIdJsonKey) int? userId,
      @JsonKey(name: JsonKeyConstant.userNameJsonKey) String? userName,
      @JsonKey(name: JsonKeyConstant.mobileJsonKey) String? mobile});
}

/// @nodoc
class __$$_LoginModelsCopyWithImpl<$Res>
    extends _$LoginModelsCopyWithImpl<$Res, _$_LoginModels>
    implements _$$_LoginModelsCopyWith<$Res> {
  __$$_LoginModelsCopyWithImpl(
      _$_LoginModels _value, $Res Function(_$_LoginModels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$_LoginModels(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginModels extends _LoginModels {
  const _$_LoginModels(
      {@JsonKey(name: JsonKeyConstant.userIdJsonKey) this.userId,
      @JsonKey(name: JsonKeyConstant.userNameJsonKey) this.userName,
      @JsonKey(name: JsonKeyConstant.mobileJsonKey) this.mobile})
      : super._();

  factory _$_LoginModels.fromJson(Map<String, dynamic> json) =>
      _$$_LoginModelsFromJson(json);

  @override
  @JsonKey(name: JsonKeyConstant.userIdJsonKey)
  final int? userId;
  @override
  @JsonKey(name: JsonKeyConstant.userNameJsonKey)
  final String? userName;
  @override
  @JsonKey(name: JsonKeyConstant.mobileJsonKey)
  final String? mobile;

  @override
  String toString() {
    return 'LoginModels(userId: $userId, userName: $userName, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginModels &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginModelsCopyWith<_$_LoginModels> get copyWith =>
      __$$_LoginModelsCopyWithImpl<_$_LoginModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginModelsToJson(
      this,
    );
  }
}

abstract class _LoginModels extends LoginModels {
  const factory _LoginModels(
      {@JsonKey(name: JsonKeyConstant.userIdJsonKey) final int? userId,
      @JsonKey(name: JsonKeyConstant.userNameJsonKey) final String? userName,
      @JsonKey(name: JsonKeyConstant.mobileJsonKey)
      final String? mobile}) = _$_LoginModels;
  const _LoginModels._() : super._();

  factory _LoginModels.fromJson(Map<String, dynamic> json) =
      _$_LoginModels.fromJson;

  @override
  @JsonKey(name: JsonKeyConstant.userIdJsonKey)
  int? get userId;
  @override
  @JsonKey(name: JsonKeyConstant.userNameJsonKey)
  String? get userName;
  @override
  @JsonKey(name: JsonKeyConstant.mobileJsonKey)
  String? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$_LoginModelsCopyWith<_$_LoginModels> get copyWith =>
      throw _privateConstructorUsedError;
}
