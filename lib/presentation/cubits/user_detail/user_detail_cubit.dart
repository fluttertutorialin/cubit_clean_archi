import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/usecases/usecases.dart';
import 'user_detail_cubits.dart';

@injectable
class UserDetailCubit extends Cubit<UserDetailState> {
  final Session _session;

  UserDetailCubit(this._session) : super(const UserDetailState.loading());

  Future<void> userDetail() async {
    emit(const UserDetailState.loading());

    emit(UserDetailState.success(UserDetailEntity(
        userId: _session.userIdReadSession(),
        userName: _session.userNameReadSession(),
        mobile: _session.mobileNoReadSession())));
  }
}
