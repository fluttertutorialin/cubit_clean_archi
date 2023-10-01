// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEntity {
  bool? get isSignUp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordEntityCopyWith<ForgotPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEntityCopyWith<$Res> {
  factory $ForgotPasswordEntityCopyWith(ForgotPasswordEntity value,
          $Res Function(ForgotPasswordEntity) then) =
      _$ForgotPasswordEntityCopyWithImpl<$Res, ForgotPasswordEntity>;
  @useResult
  $Res call({bool? isSignUp});
}

/// @nodoc
class _$ForgotPasswordEntityCopyWithImpl<$Res,
        $Val extends ForgotPasswordEntity>
    implements $ForgotPasswordEntityCopyWith<$Res> {
  _$ForgotPasswordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = freezed,
  }) {
    return _then(_value.copyWith(
      isSignUp: freezed == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordEntityCopyWith<$Res>
    implements $ForgotPasswordEntityCopyWith<$Res> {
  factory _$$_ForgotPasswordEntityCopyWith(_$_ForgotPasswordEntity value,
          $Res Function(_$_ForgotPasswordEntity) then) =
      __$$_ForgotPasswordEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isSignUp});
}

/// @nodoc
class __$$_ForgotPasswordEntityCopyWithImpl<$Res>
    extends _$ForgotPasswordEntityCopyWithImpl<$Res, _$_ForgotPasswordEntity>
    implements _$$_ForgotPasswordEntityCopyWith<$Res> {
  __$$_ForgotPasswordEntityCopyWithImpl(_$_ForgotPasswordEntity _value,
      $Res Function(_$_ForgotPasswordEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSignUp = freezed,
  }) {
    return _then(_$_ForgotPasswordEntity(
      isSignUp: freezed == isSignUp
          ? _value.isSignUp
          : isSignUp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordEntity extends _ForgotPasswordEntity {
  const _$_ForgotPasswordEntity({this.isSignUp}) : super._();

  @override
  final bool? isSignUp;

  @override
  String toString() {
    return 'ForgotPasswordEntity(isSignUp: $isSignUp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordEntity &&
            (identical(other.isSignUp, isSignUp) ||
                other.isSignUp == isSignUp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSignUp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordEntityCopyWith<_$_ForgotPasswordEntity> get copyWith =>
      __$$_ForgotPasswordEntityCopyWithImpl<_$_ForgotPasswordEntity>(
          this, _$identity);
}

abstract class _ForgotPasswordEntity extends ForgotPasswordEntity {
  const factory _ForgotPasswordEntity({final bool? isSignUp}) =
      _$_ForgotPasswordEntity;
  const _ForgotPasswordEntity._() : super._();

  @override
  bool? get isSignUp;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordEntityCopyWith<_$_ForgotPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
