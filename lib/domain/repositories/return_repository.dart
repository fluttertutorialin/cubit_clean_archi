import 'package:dartz/dartz.dart';

import '../../core/error/error.dart';
import '../entities/entities.dart';

abstract class ReturnRepository {
  Future<Either<Failure, ReturnEntity>> getReturnAwb({Map<String, dynamic>? input});
  Future<Either<Failure, ReturnEntity>> getReturnProcurement({Map<String, dynamic>? input});
}
