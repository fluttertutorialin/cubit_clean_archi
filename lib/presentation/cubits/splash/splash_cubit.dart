import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases/usecases.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final Session _session;

  SplashCubit(this._session) : super(const SplashState.loading());

  void isAuthenticatedUserCheck() async {
    final bool? authenticated = _session.isLoginRead();
    Future.delayed(const Duration(seconds: 1), () {
      authenticated!
          ? emit(const SplashState.authenticate())
          : emit(const SplashState.unAuthenticatedState());
    });
  }
}
