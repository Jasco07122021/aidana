import 'package:aidana/src/data/database/secure_storage/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage _flutterSecureStorage;

  const SecureStorageImpl(this._flutterSecureStorage);

  static const _sessionTokenKey = 'SESSION_TOKEN';
  static const _email = 'EMAIL';
  static const _nickname = 'NICKNAME';

  @override
  Future<bool> hasToken() async {
    final token = await getSessionToken();
    return token != null;
  }

  @override
  Future<void> saveEmail(String value) {
    return _flutterSecureStorage.write(key: _email, value: value);
  }

  @override
  Future<void> saveNickname(String value) {
    return _flutterSecureStorage.write(
      key: _nickname,
      value: value,
    );
  }

  @override
  Future<void> saveToken(String token) {
    return _flutterSecureStorage.write(
      key: _sessionTokenKey,
      value: token,
    );
  }

  @override
  Future<String?> getSessionToken() {
    return _flutterSecureStorage.read(key: _sessionTokenKey);
  }

  @override
  Future<String?> getEmail() {
    return _flutterSecureStorage.read(key: _email);
  }

  @override
  Future<String?> getNickname() {
    return _flutterSecureStorage.read(key: _nickname);
  }

  @override
  Future<void> deleteAll() {
    return _flutterSecureStorage.deleteAll();
  }
}
