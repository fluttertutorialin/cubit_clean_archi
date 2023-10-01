import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/error/error.dart';
import '../../core/usecases/usecases.dart';
import '../entities/entities.dart';
import '../repositories/user_repository.dart';

@LazySingleton()
class GetForgotPasswordRemoteUseCase
    implements NoParamsUseCase<Either<Failure, ForgotPasswordEntity>> {
  final UserRepository repository;

  GetForgotPasswordRemoteUseCase(this.repository);

  @override
  Future<Either<Failure, ForgotPasswordEntity>> call() async {
    return repository.getForgotPassword();
  }
}
