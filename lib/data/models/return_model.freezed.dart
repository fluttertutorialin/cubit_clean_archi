// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnModel _$ReturnModelFromJson(Map<String, dynamic> json) {
  return _ReturnModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnModel {
  @JsonKey(name: JsonKeyConstant.statusCodeJsonKey)
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: JsonKeyConstant.messageJsonKey)
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnModelCopyWith<ReturnModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnModelCopyWith<$Res> {
  factory $ReturnModelCopyWith(
          ReturnModel value, $Res Function(ReturnModel) then) =
      _$ReturnModelCopyWithImpl<$Res, ReturnModel>;
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeyConstant.statusCodeJsonKey) String? code,
      @JsonKey(name: JsonKeyConstant.messageJsonKey) String? message});
}

/// @nodoc
class _$ReturnModelCopyWithImpl<$Res, $Val extends ReturnModel>
    implements $ReturnModelCopyWith<$Res> {
  _$ReturnModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ReturnModelImplCopyWith<$Res>
    implements $ReturnModelCopyWith<$Res> {
  factory _$$ReturnModelImplCopyWith(
          _$ReturnModelImpl value, $Res Function(_$ReturnModelImpl) then) =
      __$$ReturnModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: JsonKeyConstant.statusCodeJsonKey) String? code,
      @JsonKey(name: JsonKeyConstant.messageJsonKey) String? message});
}

/// @nodoc
class __$$ReturnModelImplCopyWithImpl<$Res>
    extends _$ReturnModelCopyWithImpl<$Res, _$ReturnModelImpl>
    implements _$$ReturnModelImplCopyWith<$Res> {
  __$$ReturnModelImplCopyWithImpl(
      _$ReturnModelImpl _value, $Res Function(_$ReturnModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ReturnModelImpl(
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
@JsonSerializable()
class _$ReturnModelImpl extends _ReturnModel {
  const _$ReturnModelImpl(
      {@JsonKey(name: JsonKeyConstant.statusCodeJsonKey) this.code,
      @JsonKey(name: JsonKeyConstant.messageJsonKey) this.message})
      : super._();

  factory _$ReturnModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnModelImplFromJson(json);

  @override
  @JsonKey(name: JsonKeyConstant.statusCodeJsonKey)
  final String? code;
  @override
  @JsonKey(name: JsonKeyConstant.messageJsonKey)
  final String? message;

  @override
  String toString() {
    return 'ReturnModel(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnModelImplCopyWith<_$ReturnModelImpl> get copyWith =>
      __$$ReturnModelImplCopyWithImpl<_$ReturnModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnModelImplToJson(
      this,
    );
  }
}

abstract class _ReturnModel extends ReturnModel {
  const factory _ReturnModel(
      {@JsonKey(name: JsonKeyConstant.statusCodeJsonKey) final String? code,
      @JsonKey(name: JsonKeyConstant.messageJsonKey)
      final String? message}) = _$ReturnModelImpl;
  const _ReturnModel._() : super._();

  factory _ReturnModel.fromJson(Map<String, dynamic> json) =
      _$ReturnModelImpl.fromJson;

  @override
  @JsonKey(name: JsonKeyConstant.statusCodeJsonKey)
  String? get code;
  @override
  @JsonKey(name: JsonKeyConstant.messageJsonKey)
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ReturnModelImplCopyWith<_$ReturnModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
