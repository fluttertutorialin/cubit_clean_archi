/*
  Developed by: Lakhani kamlesh
  +91 9586331823
  kamal.lakhani56@gmail.com
*/

import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repositories/domain_repositories.dart' show GetStorageRepository;

@LazySingleton(as: GetStorageRepository)
class GetStorageImpl implements GetStorageRepository {
  final GetStorage _getStorage;

  GetStorageImpl(this._getStorage);

  @override
  Future<void> erase() {
    return _getStorage.erase();
  }

  @override
  T? read<T>(String key) {
    return _getStorage.read(key);
  }

  @override
  bool hasData(String key) {
    return _getStorage.hasData(key);
  }

  @override
  Future<void> remove(String key) {
    return _getStorage.remove(key);
  }

  @override
  Future<void> write(String key, value) {
    return _getStorage.write(key, value);
  }

  @override
  Future<void> writeIfNull(String key, value) {
    return _getStorage.writeIfNull(key, value);
  }

  @override
  void writeInMemory(String key, value) {
    _getStorage.writeInMemory(key, value);
  }
}
