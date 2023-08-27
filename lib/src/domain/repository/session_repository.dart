abstract class SessionRepository {
  Future<void> saveToken(String token);

  Future<void> closeSession();

  Future<bool> hasToken();

  Future<void> saveEmail(String value);

  Future<String?> getEmail();

  Future<void> saveNickname(String nickname);

  Future<String?> getNickname();
}
