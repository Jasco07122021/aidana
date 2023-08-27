import 'package:aidana/src/data/database/secure_storage/secure_storage.dart';
import 'package:aidana/src/data/database/secure_storage/secure_storage_impl.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DatabaseModule {
  @singleton
  FlutterSecureStorage provideFlutterSecureStorage() {
    return const FlutterSecureStorage(
      aOptions: AndroidOptions(encryptedSharedPreferences: true),
    );
  }

  @singleton
  SecureStorage provideSecureStorage(
    FlutterSecureStorage flutterSecureStorage,
  ) {
    return SecureStorageImpl(flutterSecureStorage);
  }
}
