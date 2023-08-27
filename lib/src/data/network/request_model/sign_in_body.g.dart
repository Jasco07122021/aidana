// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInBody _$SignInBodyFromJson(Map<String, dynamic> json) => SignInBody(
      json['email'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$SignInBodyToJson(SignInBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
