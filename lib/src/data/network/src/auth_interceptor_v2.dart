import 'dart:io';

import 'package:aidana/src/data/database/secure_storage/secure_storage.dart';
import 'package:dio/dio.dart';

class AuthInterceptorV2 extends InterceptorsWrapper {
  final SecureStorage storage;

  AuthInterceptorV2(this.storage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await storage.getSessionToken();

    if (token != null) {
      handler.next(
        options..headers[HttpHeaders.authorizationHeader] = 'Bearer $token',
      );
    } else {
      handler.next(options);
    }
  }
}
