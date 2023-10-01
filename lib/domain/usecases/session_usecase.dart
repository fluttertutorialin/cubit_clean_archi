/*
  Developed by: Lakhani kamlesh
  +91 9586331823
  kamal.lakhani56@gmail.com
*/

import 'package:injectable/injectable.dart';

import '../../data/datasources/session_datasource.dart';

abstract class Session {
  String? userIdReadSession();
  void userIdWriteSession(String? value);

  String? userNameReadSession();
  void userNameWriteSession(String? value);

  String? mobileNoReadSession();
  void mobileNoWriteSession(String? value);

  String? themeNameReadSession();
  void themeWriteSession(String? value);

  String? firebaseTokenReadSession();
  void firebaseTokenWriteSession(String? value);

  bool? isLoginRead();
  Future<void> isLoginWrite(bool value);

  void logout();
}

@LazySingleton(as: Session)
class SessionLocal implements Session {
  final SessionDataSource _sessionDataSource;

  SessionLocal(this._sessionDataSource);

  @override
  String? userIdReadSession() {
    return _sessionDataSource.userIdRead();
  }

  @override
  void userIdWriteSession(String? value) {
    _sessionDataSource.userIdWrite(value);
  }

  @override
  String? userNameReadSession() {
    return _sessionDataSource.userNameRead();
  }

  @override
  void userNameWriteSession(String? value) {
    _sessionDataSource.userNameWrite(value);
  }



  @override
  String? mobileNoReadSession() {
    return _sessionDataSource.mobileNoRead();
  }

  @override
  void mobileNoWriteSession(String? value) {
    _sessionDataSource.mobileNoWrite(value);
  }

  @override
  String? themeNameReadSession() {
    return _sessionDataSource.themeNameRead();
  }

  @override
  void themeWriteSession(String? value) {
    _sessionDataSource.themeWrite(value);
  }

  @override
  String? firebaseTokenReadSession() {
    return _sessionDataSource.firebaseTokenRead();
  }

  @override
  void firebaseTokenWriteSession(String? value) {
    _sessionDataSource.firebaseTokenWrite(value);
  }

  @override
  bool? isLoginRead() {
    return _sessionDataSource.isLoginRead();
  }

  @override
  Future<void> isLoginWrite(bool? value) async {
    _sessionDataSource.isLoginWrite(value);
  }

  @override
  void logout() {
    _sessionDataSource.userIdRemove();
    _sessionDataSource.mobileNoRemove();

    _sessionDataSource.isLoginRemove();
  }
}
