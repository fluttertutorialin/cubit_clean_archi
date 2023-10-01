import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/error/error.dart';
import '../../core/usecases/usecases.dart';
import '../entities/entities.dart';
import '../repositories/user_repository.dart';

@LazySingleton()
class GetSignUpRemoteUseCase
    implements NoParamsUseCase<Either<Failure, SignUpEntity>> {
  final UserRepository repository;

  GetSignUpRemoteUseCase(this.repository);

  @override
  Future<Either<Failure, SignUpEntity>> call() async {
    return repository.getSignUp();
  }
}
