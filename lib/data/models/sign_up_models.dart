import '../../domain/entities/entities.dart';

class SignUpModels {
  SignUpModels({required this.id});

  late final int id;

  SignUpModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
  }

  SignUpEntity toDomainEntity() => const SignUpEntity();
}
