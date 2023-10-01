import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/error.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/domain_repositories.dart';
import '../datasources/datasources.dart';

@LazySingleton(as: ReturnRepository)
class ReturnRepositoryImpl implements ReturnRepository {
  final RemoteDataSource remoteDataSource;

  ReturnRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, ReturnEntity>> getReturnAwb(
      {Map<String, dynamic>? input}) async {
    try {
      final response = await remoteDataSource.returnAwb(input);
      return Right(response.data!);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }

  @override
  Future<Either<Failure, ReturnEntity>> getReturnProcurement(
      {Map<String, dynamic>? input}) async {
    try {
      final response = await remoteDataSource.returnProcurement(input);
      return Right(response.data!);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }
}
