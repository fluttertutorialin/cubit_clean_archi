import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/error.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/domain_repositories.dart';
import '../datasources/datasources.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final RemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, LoginEntity>> getLogin(
      {Map<String, dynamic>? input}) async {
    try {
      final response = await remoteDataSource.login(input);
      return Right(response.data!);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    } on ErrorException catch (exception) {
      return Left(Failure.errorFailure(exception.message!));
    }
  }

  @override
  Future<Either<Failure, SignUpEntity>> getSignUp() async {
    try {
      final response = await remoteDataSource.signUp(const {});
      return Right(response.data!);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    }
  }

  @override
  Future<Either<Failure, ForgotPasswordEntity>> getForgotPassword() async {
    try {
      final response = await remoteDataSource.forgotPassword(const {});
      return Right(response.data!);
    } on NotFoundException catch (exception) {
      return Left(Failure.notFoundFailure(exception.message!));
    }
  }
}
