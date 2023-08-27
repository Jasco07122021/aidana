abstract class SaveSession {
  Future<void> saveToken({
    required String token,
    required String email,
    required String nickname,
  });
}

abstract class CheckSession {
  Future<bool> isLoggedIn();
}

abstract class Logout {
  Future<void> logout();
}

abstract class GetEmail {
  Future<String?> get();
}

abstract class GetNickName {
  Future<String?> get();
}
