import 'package:aidana/src/data/database/secure_storage/secure_storage.dart';
import 'package:aidana/src/domain/repository/session_repository.dart';

class SessionRepositoryImpl implements SessionRepository {
  final SecureStorage _secureStorage;

  const SessionRepositoryImpl(this._secureStorage);

  @override
  Future<bool> hasToken() {
    return _secureStorage.hasToken();
  }

  @override
  Future<void> saveEmail(String value) {
    return _secureStorage.saveEmail(value);
  }

  @override
  Future<String?> getEmail() {
    return _secureStorage.getEmail();
  }

  @override
  Future<void> saveNickname(String value) {
    return _secureStorage.saveNickname(value);
  }

  @override
  Future<void> saveToken(String token) {
    return _secureStorage.saveToken(token);
  }

  @override
  Future<String?> getNickname() {
    return _secureStorage.getNickname();
  }

  @override
  Future<void> closeSession() {
    /// need delete all local storage and database => Hive or Drift
    return Future.wait([
      _secureStorage.deleteAll(),
    ]);
  }
}
