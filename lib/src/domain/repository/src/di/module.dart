import 'package:aidana/src/data/database/secure_storage/secure_storage.dart';
import 'package:aidana/src/data/network/src/provider/auth_provider.dart';
import 'package:aidana/src/domain/repository/auth_repository.dart';
import 'package:aidana/src/domain/repository/session_repository.dart';
import 'package:aidana/src/domain/repository/src/repository/auth_repository_impl.dart';
import 'package:aidana/src/domain/repository/src/repository/session_repository_impl.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RepositoryModule {
  @lazySingleton
  SessionRepository provideSessionRepository(SecureStorage secureStorage) {
    return SessionRepositoryImpl(secureStorage);
  }

  @lazySingleton
  AuthRepository provideAuthRepository(AuthProvider authProvider) {
    return AuthRepositoryImpl(authProvider);
  }
}
