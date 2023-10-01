import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/error.dart';
import '../../../domain/entities/entities.dart';
import '../../../domain/usecases/usecases.dart';
import 'sign_up_cubits.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final GetSignUpRemoteUseCase getSignUpRemoteUseCase;

  SignUpCubit({required this.getSignUpRemoteUseCase})
      : super(const SignUpState.initial()) {
    bool passwordShow = false;
    passwordHide(passwordShow);
  }

  Future<void> signUp({String? mobile, String? password}) async {
    emit(const SignUpState.initial());
    emit(const SignUpState.loading());

    Either<Failure, SignUpEntity> response = await getSignUpRemoteUseCase();

    emit(response.fold((exception) => SignUpState.error(exception.message),
        (signUpResponse) => SignUpState.success(signUpResponse)));
  }

  void passwordShowing(bool? passwordShow) {
    emit(SignUpState.passwordShow(!passwordShow!));
  }

  void passwordHide(bool? passwordHide) {
    emit(SignUpState.passwordHide(!passwordHide!));
  }
}
