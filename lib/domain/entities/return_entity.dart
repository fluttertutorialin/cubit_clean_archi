import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_entity.freezed.dart';

@freezed
class ReturnEntity with _$ReturnEntity {
  const factory ReturnEntity({
    final String? code,
    final String? message
  }) = _ReturnEntity;

  const ReturnEntity._();
}