// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReturnListState {
  bool get loading => throw _privateConstructorUsedError;
  List<String> get returnList => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReturnListStateCopyWith<ReturnListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnListStateCopyWith<$Res> {
  factory $ReturnListStateCopyWith(
          ReturnListState value, $Res Function(ReturnListState) then) =
      _$ReturnListStateCopyWithImpl<$Res, ReturnListState>;
  @useResult
  $Res call({bool loading, List<String> returnList, String error});
}

/// @nodoc
class _$ReturnListStateCopyWithImpl<$Res, $Val extends ReturnListState>
    implements $ReturnListStateCopyWith<$Res> {
  _$ReturnListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? returnList = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      returnList: null == returnList
          ? _value.returnList
          : returnList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnListStateImplCopyWith<$Res>
    implements $ReturnListStateCopyWith<$Res> {
  factory _$$ReturnListStateImplCopyWith(_$ReturnListStateImpl value,
          $Res Function(_$ReturnListStateImpl) then) =
      __$$ReturnListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, List<String> returnList, String error});
}

/// @nodoc
class __$$ReturnListStateImplCopyWithImpl<$Res>
    extends _$ReturnListStateCopyWithImpl<$Res, _$ReturnListStateImpl>
    implements _$$ReturnListStateImplCopyWith<$Res> {
  __$$ReturnListStateImplCopyWithImpl(
      _$ReturnListStateImpl _value, $Res Function(_$ReturnListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? returnList = null,
    Object? error = null,
  }) {
    return _then(_$ReturnListStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      returnList: null == returnList
          ? _value._returnList
          : returnList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReturnListStateImpl implements _ReturnListState {
  const _$ReturnListStateImpl(
      {this.loading = false,
      required final List<String> returnList,
      this.error = ''})
      : _returnList = returnList;

  @override
  @JsonKey()
  final bool loading;
  final List<String> _returnList;
  @override
  List<String> get returnList {
    if (_returnList is EqualUnmodifiableListView) return _returnList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_returnList);
  }

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'ReturnListState(loading: $loading, returnList: $returnList, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnListStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._returnList, _returnList) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading,
      const DeepCollectionEquality().hash(_returnList), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnListStateImplCopyWith<_$ReturnListStateImpl> get copyWith =>
      __$$ReturnListStateImplCopyWithImpl<_$ReturnListStateImpl>(
          this, _$identity);
}

abstract class _ReturnListState implements ReturnListState {
  const factory _ReturnListState(
      {final bool loading,
      required final List<String> returnList,
      final String error}) = _$ReturnListStateImpl;

  @override
  bool get loading;
  @override
  List<String> get returnList;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ReturnListStateImplCopyWith<_$ReturnListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
