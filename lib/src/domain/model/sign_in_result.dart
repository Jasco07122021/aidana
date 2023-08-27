import 'package:aidana/src/domain/model/user.dart';

class SignInResult {
  final TokenResponse token;
  final UserModel user;

  SignInResult(this.token, this.user);
}

class TokenResponse {
  final String accessToken;
  final String? refreshToken;

  TokenResponse(this.accessToken, this.refreshToken);
}
