// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReturnState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ReturnEntity returnEntity) returnSuccess,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ReturnEntity returnEntity)? returnSuccess,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ReturnEntity returnEntity)? returnSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReturnSuccess value) returnSuccess,
    required TResult Function(_ReturnError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReturnSuccess value)? returnSuccess,
    TResult? Function(_ReturnError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReturnSuccess value)? returnSuccess,
    TResult Function(_ReturnError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnStateCopyWith<$Res> {
  factory $ReturnStateCopyWith(
          ReturnState value, $Res Function(ReturnState) then) =
      _$ReturnStateCopyWithImpl<$Res, ReturnState>;
}

/// @nodoc
class _$ReturnStateCopyWithImpl<$Res, $Val extends ReturnState>
    implements $ReturnStateCopyWith<$Res> {
  _$ReturnStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReturnState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ReturnEntity returnEntity) returnSuccess,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ReturnEntity returnEntity)? returnSuccess,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ReturnEntity returnEntity)? returnSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReturnSuccess value) returnSuccess,
    required TResult Function(_ReturnError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReturnSuccess value)? returnSuccess,
    TResult? Function(_ReturnError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReturnSuccess value)? returnSuccess,
    TResult Function(_ReturnError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReturnState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReturnState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ReturnEntity returnEntity) returnSuccess,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ReturnEntity returnEntity)? returnSuccess,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ReturnEntity returnEntity)? returnSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReturnSuccess value) returnSuccess,
    required TResult Function(_ReturnError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReturnSuccess value)? returnSuccess,
    TResult? Function(_ReturnError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReturnSuccess value)? returnSuccess,
    TResult Function(_ReturnError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReturnState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ReturnSuccessImplCopyWith<$Res> {
  factory _$$ReturnSuccessImplCopyWith(
          _$ReturnSuccessImpl value, $Res Function(_$ReturnSuccessImpl) then) =
      __$$ReturnSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReturnEntity returnEntity});

  $ReturnEntityCopyWith<$Res> get returnEntity;
}

/// @nodoc
class __$$ReturnSuccessImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$ReturnSuccessImpl>
    implements _$$ReturnSuccessImplCopyWith<$Res> {
  __$$ReturnSuccessImplCopyWithImpl(
      _$ReturnSuccessImpl _value, $Res Function(_$ReturnSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnEntity = null,
  }) {
    return _then(_$ReturnSuccessImpl(
      null == returnEntity
          ? _value.returnEntity
          : returnEntity // ignore: cast_nullable_to_non_nullable
              as ReturnEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReturnEntityCopyWith<$Res> get returnEntity {
    return $ReturnEntityCopyWith<$Res>(_value.returnEntity, (value) {
      return _then(_value.copyWith(returnEntity: value));
    });
  }
}

/// @nodoc

class _$ReturnSuccessImpl implements _ReturnSuccess {
  const _$ReturnSuccessImpl(this.returnEntity);

  @override
  final ReturnEntity returnEntity;

  @override
  String toString() {
    return 'ReturnState.returnSuccess(returnEntity: $returnEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnSuccessImpl &&
            (identical(other.returnEntity, returnEntity) ||
                other.returnEntity == returnEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, returnEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnSuccessImplCopyWith<_$ReturnSuccessImpl> get copyWith =>
      __$$ReturnSuccessImplCopyWithImpl<_$ReturnSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ReturnEntity returnEntity) returnSuccess,
    required TResult Function(String error) error,
  }) {
    return returnSuccess(returnEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ReturnEntity returnEntity)? returnSuccess,
    TResult? Function(String error)? error,
  }) {
    return returnSuccess?.call(returnEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ReturnEntity returnEntity)? returnSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (returnSuccess != null) {
      return returnSuccess(returnEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReturnSuccess value) returnSuccess,
    required TResult Function(_ReturnError value) error,
  }) {
    return returnSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReturnSuccess value)? returnSuccess,
    TResult? Function(_ReturnError value)? error,
  }) {
    return returnSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReturnSuccess value)? returnSuccess,
    TResult Function(_ReturnError value)? error,
    required TResult orElse(),
  }) {
    if (returnSuccess != null) {
      return returnSuccess(this);
    }
    return orElse();
  }
}

abstract class _ReturnSuccess implements ReturnState {
  const factory _ReturnSuccess(final ReturnEntity returnEntity) =
      _$ReturnSuccessImpl;

  ReturnEntity get returnEntity;
  @JsonKey(ignore: true)
  _$$ReturnSuccessImplCopyWith<_$ReturnSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnErrorImplCopyWith<$Res> {
  factory _$$ReturnErrorImplCopyWith(
          _$ReturnErrorImpl value, $Res Function(_$ReturnErrorImpl) then) =
      __$$ReturnErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ReturnErrorImplCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$ReturnErrorImpl>
    implements _$$ReturnErrorImplCopyWith<$Res> {
  __$$ReturnErrorImplCopyWithImpl(
      _$ReturnErrorImpl _value, $Res Function(_$ReturnErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ReturnErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReturnErrorImpl implements _ReturnError {
  const _$ReturnErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ReturnState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnErrorImplCopyWith<_$ReturnErrorImpl> get copyWith =>
      __$$ReturnErrorImplCopyWithImpl<_$ReturnErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ReturnEntity returnEntity) returnSuccess,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ReturnEntity returnEntity)? returnSuccess,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ReturnEntity returnEntity)? returnSuccess,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ReturnSuccess value) returnSuccess,
    required TResult Function(_ReturnError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ReturnSuccess value)? returnSuccess,
    TResult? Function(_ReturnError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_ReturnSuccess value)? returnSuccess,
    TResult Function(_ReturnError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ReturnError implements ReturnState {
  const factory _ReturnError(final String error) = _$ReturnErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ReturnErrorImplCopyWith<_$ReturnErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
