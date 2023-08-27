import 'package:aidana/src/data/network/src/provider/auth_provider.dart';
import 'package:aidana/src/data/network/src/provider/impl/auth_provider_impl.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ProviderModule {
  AuthProvider provideAuthProvider(Dio apiClient) =>
      AuthProviderImpl(apiClient);
}
