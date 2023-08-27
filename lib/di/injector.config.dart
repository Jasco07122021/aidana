// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aidana/src/app/app_bloc/src/bloc/auth_cubit/auth_cubit.dart'
    as _i14;
import 'package:aidana/src/app/app_bloc/src/bloc/profile_cubit/profile_cubit.dart'
    as _i13;
import 'package:aidana/src/app/app_bloc/src/bloc/sign_in_cubit/sign_in_cubit.dart'
    as _i18;
import 'package:aidana/src/app/app_bloc/src/di/module.dart' as _i24;
import 'package:aidana/src/app/navigation/app_router.dart' as _i9;
import 'package:aidana/src/app/navigation/src/app_navigators/auth_navigation.dart'
    as _i10;
import 'package:aidana/src/app/navigation/src/app_navigators/main_navigation.dart'
    as _i12;
import 'package:aidana/src/app/navigation/src/app_routes/main_router.dart'
    as _i6;
import 'package:aidana/src/app/navigation/src/di/module.dart' as _i19;
import 'package:aidana/src/app/navigation/src/guard/auth_guard.dart' as _i3;
import 'package:aidana/src/data/database/di/module.dart' as _i21;
import 'package:aidana/src/data/database/secure_storage/secure_storage.dart'
    as _i7;
import 'package:aidana/src/data/network/src/di/module.dart' as _i20;
import 'package:aidana/src/data/network/src/di/provider_module.dart' as _i25;
import 'package:aidana/src/data/network/src/provider/auth_provider.dart'
    as _i15;
import 'package:aidana/src/domain/repository/auth_repository.dart' as _i16;
import 'package:aidana/src/domain/repository/session_repository.dart' as _i8;
import 'package:aidana/src/domain/repository/src/di/module.dart' as _i22;
import 'package:aidana/src/domain/usecase/auth_usecase.dart' as _i17;
import 'package:aidana/src/domain/usecase/session_usecase.dart' as _i11;
import 'package:aidana/src/domain/usecase/src/di/module.dart' as _i23;
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final navigatorModule = _$NavigatorModule();
    final networkModule = _$NetworkModule();
    final databaseModule = _$DatabaseModule();
    final repositoryModule = _$RepositoryModule();
    final usecaseModule = _$UsecaseModule();
    final appBlocModule = _$AppBlocModule();
    final providerModule = _$ProviderModule();
    gh.singleton<_i3.AuthGuard>(navigatorModule.provideAuthGuard());
    gh.factory<_i4.BaseOptions>(() => networkModule.baseOptions());
    gh.singleton<_i5.FlutterSecureStorage>(
      databaseModule.provideFlutterSecureStorage(),
    );
    gh.lazySingleton<_i6.MainRoutes>(() => navigatorModule.provideMainRoutes());
    gh.singleton<_i7.SecureStorage>(
      databaseModule.provideSecureStorage(gh<_i5.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i8.SessionRepository>(
      () => repositoryModule.provideSessionRepository(gh<_i7.SecureStorage>()),
    );
    gh.singleton<String>(
      networkModule.provideBaseUrl(),
      instanceName: 'base_url',
    );
    gh.singleton<_i9.AppRouter>(
      navigatorModule.provideAppRouter(gh<_i3.AuthGuard>()),
    );
    gh.lazySingleton<_i10.AuthNavigator>(
      () => navigatorModule.provideAuthNavigator(gh<_i9.AppRouter>()),
    );
    gh.lazySingleton<_i11.CheckSession>(
      () => usecaseModule.provideCheckSession(gh<_i8.SessionRepository>()),
    );
    gh.lazySingleton<_i4.Dio>(
      () => networkModule.provideDio(
        gh<_i4.BaseOptions>(),
        gh<String>(instanceName: 'base_url'),
        gh<_i7.SecureStorage>(),
      ),
    );
    gh.lazySingleton<_i11.GetEmail>(
      () => usecaseModule.provideGetEmail(gh<_i8.SessionRepository>()),
    );
    gh.lazySingleton<_i11.GetNickName>(
      () => usecaseModule.provideGetNickName(gh<_i8.SessionRepository>()),
    );
    gh.lazySingleton<_i11.Logout>(
      () => usecaseModule.provideLogout(gh<_i8.SessionRepository>()),
    );
    gh.lazySingleton<_i12.MainNavigator>(
      () => navigatorModule.provideMainNavigator(gh<_i9.AppRouter>()),
    );
    gh.factory<_i13.ProfileCubit>(
      () => appBlocModule.provideProfileCubit(
        gh<_i11.GetEmail>(),
        gh<_i11.GetNickName>(),
      ),
    );
    gh.lazySingleton<_i11.SaveSession>(
      () => usecaseModule.provideSaveSession(gh<_i8.SessionRepository>()),
    );
    gh.factory<_i14.AuthCubit>(
      () => appBlocModule.provideAuthCubit(gh<_i11.Logout>()),
    );
    gh.factory<_i15.AuthProvider>(
      () => providerModule.provideAuthProvider(gh<_i4.Dio>()),
    );
    gh.lazySingleton<_i16.AuthRepository>(
      () => repositoryModule.provideAuthRepository(gh<_i15.AuthProvider>()),
    );
    gh.lazySingleton<_i17.SignIn>(
      () => usecaseModule.provideSignIn(
        gh<_i16.AuthRepository>(),
        gh<_i11.SaveSession>(),
      ),
    );
    gh.factory<_i18.SignInCubit>(
      () => appBlocModule.provideSignInCubit(gh<_i17.SignIn>()),
    );
    return this;
  }
}

class _$NavigatorModule extends _i19.NavigatorModule {}

class _$NetworkModule extends _i20.NetworkModule {}

class _$DatabaseModule extends _i21.DatabaseModule {}

class _$RepositoryModule extends _i22.RepositoryModule {}

class _$UsecaseModule extends _i23.UsecaseModule {}

class _$AppBlocModule extends _i24.AppBlocModule {}

class _$ProviderModule extends _i25.ProviderModule {}
