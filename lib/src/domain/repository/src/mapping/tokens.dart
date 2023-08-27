import 'package:aidana/src/data/network/response/sign_in_response.dart';
import 'package:aidana/src/domain/model/sign_in_result.dart';

extension TokensResponseDTOExt on TokensResponseDTO {
  TokenResponse toMapping() {
    return TokenResponse(accessToken, refreshToken);
  }
}
