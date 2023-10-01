import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/entities.dart';

part 'user_detail_state.freezed.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState.initial() = _Initial;
  const factory UserDetailState.loading() = _Loading;
  const factory UserDetailState.success(UserDetailEntity userDetailEntity) = _Success;
}