import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/error/error.dart';
import '../../core/usecases/usecases.dart';
import '../entities/entities.dart';
import '../inputs/inputs.dart';
import '../repositories/domain_repositories.dart';

@LazySingleton()
class GetReturnProcurementRemoteUseCase
    implements UseCase<Either<Failure, ReturnEntity>, ReturnProcurementInput> {
  final ReturnRepository repository;

  GetReturnProcurementRemoteUseCase(this.repository);

  @override
  Future<Either<Failure, ReturnEntity>> call(
      ReturnProcurementInput returnProcurementInput) async {
    return repository.getReturnProcurement(
        input: returnProcurementInput.toJson());
  }
}
