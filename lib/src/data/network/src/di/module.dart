import 'package:aidana/src/data/database/secure_storage/secure_storage.dart';
import 'package:aidana/src/data/network/src/auth_interceptor_v2.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  /// need secure base_url for example this package => flutter_dotenv
  @singleton
  @Named('base_url')
  String provideBaseUrl() => 'http://45.10.110.181:8080';

  @lazySingleton
  Dio provideDio(
    BaseOptions baseOptions,
    @Named('base_url') String baseUrl,
    SecureStorage storage,
  ) {
    final dio = Dio(baseOptions..baseUrl = baseUrl);
    return dio
      ..interceptors.addAll([
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: false,
          responseHeader: false,
        ),
        AuthInterceptorV2(storage),
      ]);
  }

  BaseOptions baseOptions() => BaseOptions(
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        connectTimeout: const Duration(seconds: 10),
        contentType: Headers.jsonContentType,
      );
}
