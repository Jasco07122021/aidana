import 'package:aidana/src/data/network/request_model/sign_in_body.dart';
import 'package:aidana/src/data/network/response/api_response.dart';
import 'package:aidana/src/data/network/response/sign_in_response.dart';
import 'package:aidana/src/data/network/src/endpoints/endpoints.dart';
import 'package:aidana/src/data/network/src/provider/auth_provider.dart';
import 'package:dio/dio.dart';

class AuthProviderImpl extends AuthProvider {
  final Dio apiClient;

  AuthProviderImpl(this.apiClient);

  @override
  Future<ApiResponse<SignInResponseDTO>> signIn(SignInBody signInBody) {
    return apiCall(
      apiClient.post(UserEndpoints.signIn, data: signInBody.toJson()),
      dataFromJson: (data) {
        return SignInResponseDTO.fromJson(data as Map<String, dynamic>);
      },
    );
  }
}
