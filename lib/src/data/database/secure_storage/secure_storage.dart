abstract class SecureStorage {
  Future<void> saveToken(String token);

  Future<bool> hasToken();

  Future<void> saveEmail(String value);

  Future<String?> getEmail();

  Future<void> saveNickname(String value);

  Future<String?> getNickname();

  Future<String?> getSessionToken();

  Future<void> deleteAll();
}
