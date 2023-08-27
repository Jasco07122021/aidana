// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponseDTO _$SignInResponseDTOFromJson(Map<String, dynamic> json) =>
    SignInResponseDTO(
      TokensResponseDTO.fromJson(json['tokens'] as Map<String, dynamic>),
      UserDTO.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseDTOToJson(SignInResponseDTO instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
      'user': instance.user,
    };

TokensResponseDTO _$TokensResponseDTOFromJson(Map<String, dynamic> json) =>
    TokensResponseDTO(
      json['accessToken'] as String,
      json['refreshToken'] as String?,
    );

Map<String, dynamic> _$TokensResponseDTOToJson(TokensResponseDTO instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
