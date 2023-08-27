import 'package:aidana/src/data/core/result.dart';
import 'package:aidana/src/data/network/request_model/sign_in_body.dart';
import 'package:aidana/src/data/network/src/provider/auth_provider.dart';
import 'package:aidana/src/domain/model/sign_in_result.dart';
import 'package:aidana/src/domain/repository/auth_repository.dart';
import 'package:aidana/src/domain/repository/src/mapping/tokens.dart';
import 'package:aidana/src/domain/repository/src/mapping/user.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthProvider authProvider;

  AuthRepositoryImpl(this.authProvider);

  @override
  Future<Result<SignInResult>> signIn(String email, String password) {
    return toResult2(
      authProvider.signIn(SignInBody(email, password)),
      fromSuccessResponse: (response) {
        final data = response.data!;
        return SignInResult(
          data.tokens.toMapping(),
          data.user.toMapping(),
        );
      },
    );
  }
}
