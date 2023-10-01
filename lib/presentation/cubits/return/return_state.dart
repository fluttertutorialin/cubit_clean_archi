import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/entities.dart';
part 'return_state.freezed.dart';

@freezed
class ReturnState with _$ReturnState {
  const factory ReturnState.initial() = _Initial;
  const factory ReturnState.loading() = _Loading;
  const factory ReturnState.returnSuccess(ReturnEntity returnEntity) =
      _ReturnSuccess;

  const factory ReturnState.error(String error) = _ReturnError;
}
