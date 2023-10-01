// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReturnEntity {
  String? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReturnEntityCopyWith<ReturnEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnEntityCopyWith<$Res> {
  factory $ReturnEntityCopyWith(
          ReturnEntity value, $Res Function(ReturnEntity) then) =
      _$ReturnEntityCopyWithImpl<$Res, ReturnEntity>;
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class _$ReturnEntityCopyWithImpl<$Res, $Val extends ReturnEntity>
    implements $ReturnEntityCopyWith<$Res> {
  _$ReturnEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReturnEntityCopyWith<$Res>
    implements $ReturnEntityCopyWith<$Res> {
  factory _$$_ReturnEntityCopyWith(
          _$_ReturnEntity value, $Res Function(_$_ReturnEntity) then) =
      __$$_ReturnEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, String? message});
}

/// @nodoc
class __$$_ReturnEntityCopyWithImpl<$Res>
    extends _$ReturnEntityCopyWithImpl<$Res, _$_ReturnEntity>
    implements _$$_ReturnEntityCopyWith<$Res> {
  __$$_ReturnEntityCopyWithImpl(
      _$_ReturnEntity _value, $Res Function(_$_ReturnEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_ReturnEntity(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ReturnEntity extends _ReturnEntity {
  const _$_ReturnEntity({this.code, this.message}) : super._();

  @override
  final String? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'ReturnEntity(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReturnEntity &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnEntityCopyWith<_$_ReturnEntity> get copyWith =>
      __$$_ReturnEntityCopyWithImpl<_$_ReturnEntity>(this, _$identity);
}

abstract class _ReturnEntity extends ReturnEntity {
  const factory _ReturnEntity({final String? code, final String? message}) =
      _$_ReturnEntity;
  const _ReturnEntity._() : super._();

  @override
  String? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_ReturnEntityCopyWith<_$_ReturnEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
