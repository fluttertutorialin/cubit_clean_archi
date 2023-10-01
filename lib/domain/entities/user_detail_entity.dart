import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_entity.freezed.dart';

@freezed
class UserDetailEntity with _$UserDetailEntity {
  const factory UserDetailEntity({
    final String? userId,
    final String? userName,
    final String? mobile,
  }) = _UserDetailEntity;

  const UserDetailEntity._();
}
