import 'package:aidana/src/data/network/request_model/sign_in_body.dart';
import 'package:aidana/src/data/network/response/api_response.dart';
import 'package:aidana/src/data/network/response/sign_in_response.dart';
import 'package:aidana/src/data/network/src/provider/base_provider.dart';

abstract class AuthProvider extends BaseProvider {
  Future<ApiResponse<SignInResponseDTO>> signIn(SignInBody signInBody);
}
