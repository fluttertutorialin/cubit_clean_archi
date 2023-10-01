import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/error/error.dart';
import '../../core/usecases/usecases.dart';
import '../entities/entities.dart';
import '../inputs/inputs.dart';
import '../repositories/domain_repositories.dart';

@LazySingleton()
class GetLoginRemoteUseCase
    implements UseCase<Either<Failure, LoginEntity>, LoginInput> {
  final UserRepository repository;

  GetLoginRemoteUseCase(this.repository);

  @override
  Future<Either<Failure, LoginEntity>> call(LoginInput loginInput) async {
    return repository.getLogin(input: loginInput.toJson());
  }
}
