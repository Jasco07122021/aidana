import 'package:aidana/src/data/core/result.dart';
import 'package:aidana/src/domain/repository/auth_repository.dart';
import 'package:aidana/src/domain/usecase/auth_usecase.dart';
import 'package:aidana/src/domain/usecase/session_usecase.dart';

class SignInImpl implements SignIn {
  final AuthRepository authRepository;
  final SaveSession _saveSessionImpl;

  SignInImpl(this.authRepository, this._saveSessionImpl);

  @override
  Future<Result<void>> signIn(String email, String password) async {
    final result = await authRepository.signIn(email, password);
    if (result.status == Status.completed) {
      final data = result.data!;
      await _saveSessionImpl.saveToken(
        token: data.token.accessToken,
        email: data.user.email,
        nickname: data.user.nickname,
      );
    }
    return result;
  }
}
