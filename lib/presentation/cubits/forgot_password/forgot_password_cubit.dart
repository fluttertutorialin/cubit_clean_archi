import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/error.dart';
import '../../../domain/entities/entities.dart';
import '../../../domain/usecases/usecases.dart';
import 'forgot_password_cubits.dart';

@injectable
class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final GetForgotPasswordRemoteUseCase getForgotPasswordRemoteUseCase;

  ForgotPasswordCubit({required this.getForgotPasswordRemoteUseCase})
      : super(const ForgotPasswordState.initial());

  Future<void> forgotPassword({String? mobile, String? password}) async {
    emit(const ForgotPasswordState.loading());

    Either<Failure, ForgotPasswordEntity> response =
        await getForgotPasswordRemoteUseCase();
    emit(response.fold(
        (exception) => ForgotPasswordState.error(exception.message),
        (forgotPasswordResponse) =>
            ForgotPasswordState.success(forgotPasswordResponse)));
  }
}
