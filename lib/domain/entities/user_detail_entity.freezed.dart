// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailEntity {
  String? get userId => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailEntityCopyWith<UserDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailEntityCopyWith<$Res> {
  factory $UserDetailEntityCopyWith(
          UserDetailEntity value, $Res Function(UserDetailEntity) then) =
      _$UserDetailEntityCopyWithImpl<$Res, UserDetailEntity>;
  @useResult
  $Res call({String? userId, String? userName, String? mobile});
}

/// @nodoc
class _$UserDetailEntityCopyWithImpl<$Res, $Val extends UserDetailEntity>
    implements $UserDetailEntityCopyWith<$Res> {
  _$UserDetailEntityCopyWithImpl(this._value, this._then);

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
              as String?,
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
abstract class _$$UserDetailEntityImplCopyWith<$Res>
    implements $UserDetailEntityCopyWith<$Res> {
  factory _$$UserDetailEntityImplCopyWith(_$UserDetailEntityImpl value,
          $Res Function(_$UserDetailEntityImpl) then) =
      __$$UserDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? userName, String? mobile});
}

/// @nodoc
class __$$UserDetailEntityImplCopyWithImpl<$Res>
    extends _$UserDetailEntityCopyWithImpl<$Res, _$UserDetailEntityImpl>
    implements _$$UserDetailEntityImplCopyWith<$Res> {
  __$$UserDetailEntityImplCopyWithImpl(_$UserDetailEntityImpl _value,
      $Res Function(_$UserDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? userName = freezed,
    Object? mobile = freezed,
  }) {
    return _then(_$UserDetailEntityImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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

class _$UserDetailEntityImpl extends _UserDetailEntity {
  const _$UserDetailEntityImpl({this.userId, this.userName, this.mobile})
      : super._();

  @override
  final String? userId;
  @override
  final String? userName;
  @override
  final String? mobile;

  @override
  String toString() {
    return 'UserDetailEntity(userId: $userId, userName: $userName, mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailEntityImpl &&
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
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      __$$UserDetailEntityImplCopyWithImpl<_$UserDetailEntityImpl>(
          this, _$identity);
}

abstract class _UserDetailEntity extends UserDetailEntity {
  const factory _UserDetailEntity(
      {final String? userId,
      final String? userName,
      final String? mobile}) = _$UserDetailEntityImpl;
  const _UserDetailEntity._() : super._();

  @override
  String? get userId;
  @override
  String? get userName;
  @override
  String? get mobile;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
