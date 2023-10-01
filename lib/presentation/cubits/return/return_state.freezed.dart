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
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReturnState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ReturnState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
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
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ReturnSuccessCopyWith<$Res> {
  factory _$$_ReturnSuccessCopyWith(
          _$_ReturnSuccess value, $Res Function(_$_ReturnSuccess) then) =
      __$$_ReturnSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ReturnEntity returnEntity});

  $ReturnEntityCopyWith<$Res> get returnEntity;
}

/// @nodoc
class __$$_ReturnSuccessCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$_ReturnSuccess>
    implements _$$_ReturnSuccessCopyWith<$Res> {
  __$$_ReturnSuccessCopyWithImpl(
      _$_ReturnSuccess _value, $Res Function(_$_ReturnSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnEntity = null,
  }) {
    return _then(_$_ReturnSuccess(
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

class _$_ReturnSuccess implements _ReturnSuccess {
  const _$_ReturnSuccess(this.returnEntity);

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
            other is _$_ReturnSuccess &&
            (identical(other.returnEntity, returnEntity) ||
                other.returnEntity == returnEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, returnEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnSuccessCopyWith<_$_ReturnSuccess> get copyWith =>
      __$$_ReturnSuccessCopyWithImpl<_$_ReturnSuccess>(this, _$identity);

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
      _$_ReturnSuccess;

  ReturnEntity get returnEntity;
  @JsonKey(ignore: true)
  _$$_ReturnSuccessCopyWith<_$_ReturnSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReturnErrorCopyWith<$Res> {
  factory _$$_ReturnErrorCopyWith(
          _$_ReturnError value, $Res Function(_$_ReturnError) then) =
      __$$_ReturnErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ReturnErrorCopyWithImpl<$Res>
    extends _$ReturnStateCopyWithImpl<$Res, _$_ReturnError>
    implements _$$_ReturnErrorCopyWith<$Res> {
  __$$_ReturnErrorCopyWithImpl(
      _$_ReturnError _value, $Res Function(_$_ReturnError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ReturnError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReturnError implements _ReturnError {
  const _$_ReturnError(this.error);

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
            other is _$_ReturnError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReturnErrorCopyWith<_$_ReturnError> get copyWith =>
      __$$_ReturnErrorCopyWithImpl<_$_ReturnError>(this, _$identity);

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
  const factory _ReturnError(final String error) = _$_ReturnError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ReturnErrorCopyWith<_$_ReturnError> get copyWith =>
      throw _privateConstructorUsedError;
}
