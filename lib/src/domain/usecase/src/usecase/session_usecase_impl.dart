import 'package:aidana/src/domain/repository/session_repository.dart';
import 'package:aidana/src/domain/usecase/session_usecase.dart';

class SaveSessionImpl implements SaveSession {
  final SessionRepository _sessionRepository;

  const SaveSessionImpl(this._sessionRepository);

  @override
  Future<void> saveToken({
    required String token,
    required String email,
    required String nickname,
  }) {
    return Future.wait([
      _sessionRepository.saveToken(token),
      _sessionRepository.saveEmail(email),
      _sessionRepository.saveNickname(nickname),
    ]);
  }
}

class CheckSessionImpl implements CheckSession {
  final SessionRepository _sessionRepository;

  const CheckSessionImpl(this._sessionRepository);

  @override
  Future<bool> isLoggedIn() {
    return _sessionRepository.hasToken();
  }
}

class LogoutImpl implements Logout {
  final SessionRepository _sessionRepository;

  const LogoutImpl(this._sessionRepository);

  @override
  Future<void> logout() async {
    return _sessionRepository.closeSession();
  }
}

class GetEmailImpl implements GetEmail {
  final SessionRepository _sessionRepository;

  const GetEmailImpl(this._sessionRepository);

  @override
  Future<String?> get() {
    return _sessionRepository.getEmail();
  }
}

class GetNickNameImpl implements GetNickName {
  final SessionRepository _sessionRepository;

  const GetNickNameImpl(this._sessionRepository);

  @override
  Future<String?> get() {
    return _sessionRepository.getNickname();
  }
}
