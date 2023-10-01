import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.failure(final String message) = _Failure;
  const factory Failure.notFoundFailure(final String message) = _NotFoundFailure;
  const factory Failure.errorFailure(final String message) = _ErrorFailure;
}
