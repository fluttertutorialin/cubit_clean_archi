// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEntity {
  int? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res, LoginEntity>;
  @useResult
  $Res call({int? userId, String? userName, String? mobile});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res, $Val extends LoginEntity>
    implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$_LoginEntityCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$_LoginEntityCopyWith(
          _$_LoginEntity value, $Res Function(_$_LoginEntity) then) =
      __$$_LoginEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? userId, String? userName, String? mobile});
}

/// @nodoc
class __$$_LoginEntityCopyWithImpl<$Res>
    extends _$LoginEntityCopyWithImpl<$Res, _$_LoginEntity>
    implements _$$_LoginEntityCopyWith<$Res> {
  __$$_LoginEntityCopyWithImpl(
      _$_LoginEntity _value, $Res Function(_$_LoginEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$_LoginEntity(
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

class _$_LoginEntity extends _LoginEntity {
  const _$_LoginEntity({this.userId, this.userName, this.mobile}) : super._();

  @override
  final int? userId;
  @override
  final String? userName;
  @override
  final String? mobile;

  @override
  String toString() {
    return 'LoginEntity(userId: $userId, userName: $userName, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEntity &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, userName, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      __$$_LoginEntityCopyWithImpl<_$_LoginEntity>(this, _$identity);
}

abstract class _LoginEntity extends LoginEntity {
  const factory _LoginEntity(
      {final int? userId,
      final String? userName,
      final String? mobile}) = _$_LoginEntity;
  const _LoginEntity._() : super._();

  @override
  int? get userId;
  @override
  String? get userName;
  @override
  String? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
