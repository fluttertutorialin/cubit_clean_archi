// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements Failure {
  const factory _Failure(final String message) = _$_Failure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_NotFoundFailureCopyWith(
          _$_NotFoundFailure value, $Res Function(_$_NotFoundFailure) then) =
      __$$_NotFoundFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NotFoundFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_NotFoundFailure>
    implements _$$_NotFoundFailureCopyWith<$Res> {
  __$$_NotFoundFailureCopyWithImpl(
      _$_NotFoundFailure _value, $Res Function(_$_NotFoundFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NotFoundFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotFoundFailure implements _NotFoundFailure {
  const _$_NotFoundFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notFoundFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFoundFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundFailureCopyWith<_$_NotFoundFailure> get copyWith =>
      __$$_NotFoundFailureCopyWithImpl<_$_NotFoundFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
  }) {
    return notFoundFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
  }) {
    return notFoundFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
  }) {
    return notFoundFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
  }) {
    return notFoundFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    required TResult orElse(),
  }) {
    if (notFoundFailure != null) {
      return notFoundFailure(this);
    }
    return orElse();
  }
}

abstract class _NotFoundFailure implements Failure {
  const factory _NotFoundFailure(final String message) = _$_NotFoundFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NotFoundFailureCopyWith<_$_NotFoundFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorFailureCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$_ErrorFailureCopyWith(
          _$_ErrorFailure value, $Res Function(_$_ErrorFailure) then) =
      __$$_ErrorFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ErrorFailure>
    implements _$$_ErrorFailureCopyWith<$Res> {
  __$$_ErrorFailureCopyWithImpl(
      _$_ErrorFailure _value, $Res Function(_$_ErrorFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ErrorFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorFailure implements _ErrorFailure {
  const _$_ErrorFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.errorFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorFailureCopyWith<_$_ErrorFailure> get copyWith =>
      __$$_ErrorFailureCopyWithImpl<_$_ErrorFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failure,
    required TResult Function(String message) notFoundFailure,
    required TResult Function(String message) errorFailure,
  }) {
    return errorFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? failure,
    TResult? Function(String message)? notFoundFailure,
    TResult? Function(String message)? errorFailure,
  }) {
    return errorFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failure,
    TResult Function(String message)? notFoundFailure,
    TResult Function(String message)? errorFailure,
    required TResult orElse(),
  }) {
    if (errorFailure != null) {
      return errorFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Failure value) failure,
    required TResult Function(_NotFoundFailure value) notFoundFailure,
    required TResult Function(_ErrorFailure value) errorFailure,
  }) {
    return errorFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Failure value)? failure,
    TResult? Function(_NotFoundFailure value)? notFoundFailure,
    TResult? Function(_ErrorFailure value)? errorFailure,
  }) {
    return errorFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Failure value)? failure,
    TResult Function(_NotFoundFailure value)? notFoundFailure,
    TResult Function(_ErrorFailure value)? errorFailure,
    required TResult orElse(),
  }) {
    if (errorFailure != null) {
      return errorFailure(this);
    }
    return orElse();
  }
}

abstract class _ErrorFailure implements Failure {
  const factory _ErrorFailure(final String message) = _$_ErrorFailure;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorFailureCopyWith<_$_ErrorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
