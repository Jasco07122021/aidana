import 'dart:developer';

import 'package:aidana/src/data/network/response/api_error_response.dart';
import 'package:aidana/src/data/network/response/api_response.dart';
import 'package:dio/dio.dart';

abstract class BaseProvider {
  Future<ApiResponse<T>> apiCall<T>(
    Future<Response> request, {
    required T Function(dynamic data) dataFromJson,
    T? Function(String errorData)? errorDataFromJson,
  }) async {
    try {
      final response = await request;
      if (response.statusCode == 200 || response.statusCode == 201) {
        return ApiResponse(
          dataFromJson(response.data),
          success: true,
        );
      }
      final errorJson = ApiErrorResponse.fromJson(
        response.data as Map<String, dynamic>,
      );
      return ApiResponse(
        null,
        error: errorJson.message,
        success: false,
      );
    } on DioException catch (e) {
      try {
        log('Error ${e.response?.data}');
        final errorJson = ApiErrorResponse.fromJson(
          e.response?.data as Map<String, dynamic>,
        );
        return ApiResponse(
          null,
          error: errorJson.message,
          success: false,
        );
      } catch (e) {
        return ApiResponse(
          null,
          error: 'Something is wrong, please try again',
          success: false,
        );
      }
    } catch (e) {
      log('Error $e');
      return ApiResponse(
        null,
        error: 'Something is wrong, please try again',
        success: false,
      );
    }
  }
}
