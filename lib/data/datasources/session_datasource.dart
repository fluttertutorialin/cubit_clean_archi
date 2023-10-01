/*
  Developed by: Lakhani kamlesh
  +91 9586331823
  kamal.lakhani56@gmail.com
*/


import 'package:injectable/injectable.dart';

import '../../core/constants/constants.dart';
import '../../domain/repositories/domain_repositories.dart';

/// This is used write data persistence. Store data read, remove and exist key or not.
/// userName, userId, isLogin, theme.
/// See : [SessionDataSourceImpl] an implementation of this class.
abstract class SessionDataSource {
  ///USERID
  String? userIdRead();
  Future<void> userIdWrite(String? value);
  Future<void> userIdRemove();

  String? userNameRead();
  Future<void> userNameWrite(String? value);
  Future<void> userNameRemove();

  String? mobileNoRead();
  Future<void> mobileNoWrite(String? value);
  Future<void> mobileNoRemove();

  ///USER IS LOGIN CHECK
  bool? isLoginRead();
  Future<void> isLoginWrite(bool? value);
  Future<void> isLoginRemove();

  ///THEME
  String? themeNameRead();
  Future<void> themeWrite(String? value);

  ///FIREBASE TOKEN
  String? firebaseTokenRead();
  Future<void> firebaseTokenWrite(String? value);
  Future<void> firebaseTokenRemove();

  Future<void> eraseContainer();
}

/// A concrete implementation of [SessionDataSource]
@LazySingleton(as: SessionDataSource)
class SessionDataSourceImpl extends SessionDataSource {
  final GetStorageRepository getStorageRepository;

  SessionDataSourceImpl(this.getStorageRepository);

  @override
  Future<void> eraseContainer() => getStorageRepository.erase();

  @override
  String? userIdRead() => getStorageRepository.read(SessionConstant.userIdSession);
  @override
  Future<void> userIdWrite(String? value) => getStorageRepository.write(SessionConstant.userIdSession, value);
  @override
  Future<void> userIdRemove() => getStorageRepository.remove(SessionConstant.userIdSession);

  @override
  String? userNameRead() => getStorageRepository.read(SessionConstant.userNameSession);
  @override
  Future<void> userNameWrite(String? value) => getStorageRepository.write(SessionConstant.userNameSession, value);
  @override
  Future<void> userNameRemove() => getStorageRepository.remove(SessionConstant.userNameSession);

  @override
  String? mobileNoRead() => getStorageRepository.read(SessionConstant.mobileNoSession);
  @override
  Future<void> mobileNoWrite(String? value) => getStorageRepository.write(SessionConstant.mobileNoSession, value);
  @override
  Future<void> mobileNoRemove() => getStorageRepository.remove(SessionConstant.mobileNoSession);

  @override
  bool isLoginRead() =>
      getStorageRepository.hasData(SessionConstant.isLoginSession);

  @override
  Future<void> isLoginWrite(bool? value) =>
      getStorageRepository.write(SessionConstant.isLoginSession, value);

  @override
  Future<void> isLoginRemove() =>
      getStorageRepository.remove(SessionConstant.isLoginSession);

  @override
  String? themeNameRead() =>
      getStorageRepository.read(SessionConstant.themeNameSession);

  @override
  Future<void> themeWrite(String? value) =>
      getStorageRepository.write(SessionConstant.themeNameSession, value);

  @override
  String? firebaseTokenRead() =>
      getStorageRepository.read(SessionConstant.firebaseTokenSession);

  @override
  Future<void> firebaseTokenWrite(String? value) =>
      getStorageRepository.write(SessionConstant.firebaseTokenSession, value);

  @override
  Future<void> firebaseTokenRemove() =>
      getStorageRepository.remove(SessionConstant.firebaseTokenSession);
}
