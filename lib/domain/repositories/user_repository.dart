import 'package:dartz/dartz.dart';

import '../../core/error/error.dart';
import '../entities/entities.dart';

abstract class UserRepository {
  Future<Either<Failure, LoginEntity>> getLogin({Map<String, dynamic>? input});
  Future<Either<Failure, SignUpEntity>> getSignUp();
  Future<Either<Failure, ForgotPasswordEntity>> getForgotPassword();
}
