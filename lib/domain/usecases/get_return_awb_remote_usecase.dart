import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/error/error.dart';
import '../../core/usecases/usecases.dart';
import '../entities/entities.dart';
import '../inputs/inputs.dart';
import '../repositories/domain_repositories.dart';

@LazySingleton()
class GetReturnAwbRemoteUseCase
    implements UseCase<Either<Failure, ReturnEntity>, ReturnAwbInput> {
  final ReturnRepository repository;

  GetReturnAwbRemoteUseCase(this.repository);

  @override
  Future<Either<Failure, ReturnEntity>> call(ReturnAwbInput returnInput) async {
    return repository.getReturnAwb(input: returnInput.toJson());
  }
}
