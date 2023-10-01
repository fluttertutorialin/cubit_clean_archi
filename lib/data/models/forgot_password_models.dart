import '../../domain/entities/entities.dart';

class ForgotPasswordModels {
  ForgotPasswordModels({required this.id});

  late final int id;

  ForgotPasswordModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  ForgotPasswordEntity toDomainEntity() => const ForgotPasswordEntity();
}
