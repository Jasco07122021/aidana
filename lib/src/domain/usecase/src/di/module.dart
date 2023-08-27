import 'package:aidana/src/domain/repository/auth_repository.dart';
import 'package:aidana/src/domain/repository/session_repository.dart';
import 'package:aidana/src/domain/usecase/auth_usecase.dart';
import 'package:aidana/src/domain/usecase/session_usecase.dart';
import 'package:aidana/src/domain/usecase/src/usecase/auth_usecase_impl.dart';
import 'package:aidana/src/domain/usecase/src/usecase/session_usecase_impl.dart';
import 'package:injectable/injectable.dart';

@module
abstract class UsecaseModule {
  @lazySingleton
  SaveSession provideSaveSession(SessionRepository sessionRepository) {
    return SaveSessionImpl(sessionRepository);
  }

  @lazySingleton
  CheckSession provideCheckSession(SessionRepository sessionRepository) {
    return CheckSessionImpl(sessionRepository);
  }

  @lazySingleton
  SignIn provideSignIn(
    AuthRepository authRepository,
    SaveSession saveSession,
  ) {
    return SignInImpl(authRepository, saveSession);
  }

  @lazySingleton
  Logout provideLogout(SessionRepository sessionRepository) {
    return LogoutImpl(sessionRepository);
  }

  @lazySingleton
  GetEmail provideGetEmail(SessionRepository sessionRepository) {
    return GetEmailImpl(sessionRepository);
  }

  @lazySingleton
  GetNickName provideGetNickName(SessionRepository sessionRepository) {
    return GetNickNameImpl(sessionRepository);
  }
}
