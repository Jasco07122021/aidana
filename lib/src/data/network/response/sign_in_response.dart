import 'package:aidana/src/data/network/response/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response.g.dart';

@JsonSerializable(ignoreUnannotated: false)
class SignInResponseDTO {
  @JsonKey(name: 'tokens')
  final TokensResponseDTO tokens;
  @JsonKey(name: 'user')
  final UserDTO user;

  SignInResponseDTO(this.tokens, this.user);

  factory SignInResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SignInResponseDTOToJson(this);
}

@JsonSerializable(ignoreUnannotated: false)
class TokensResponseDTO {
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;

  TokensResponseDTO(this.accessToken, this.refreshToken);

  factory TokensResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$TokensResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$TokensResponseDTOToJson(this);
}
