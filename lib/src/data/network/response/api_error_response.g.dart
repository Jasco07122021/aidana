// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) =>
    ApiErrorResponse(
      json['name'] as String,
      json['message'] as String,
      json['status'] as int?,
      json['errors'] as List<dynamic>?,
    );

Map<String, dynamic> _$ApiErrorResponseToJson(ApiErrorResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'status': instance.status,
      'errors': instance.errors,
    };
