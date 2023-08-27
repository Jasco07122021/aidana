import 'package:aidana/src/app/navigation/app_router.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/auth_navigation.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/impl/auth_navigation_impl.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/impl/main_navigation_impl.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/main_navigation.dart';
import 'package:aidana/src/app/navigation/src/app_routes/impl/main_routes_impl.dart';
import 'package:aidana/src/app/navigation/src/app_routes/main_router.dart';
import 'package:aidana/src/app/navigation/src/guard/auth_guard.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NavigatorModule {
  @singleton
  AuthGuard provideAuthGuard() {
    return AuthGuard();
  }

  @singleton
  AppRouter provideAppRouter(
    AuthGuard authGuard,
  ) {
    return AppRouter(authGuard);
  }

  @lazySingleton
  AuthNavigator provideAuthNavigator(AppRouter appRouter) {
    return AuthNavigatorImpl(appRouter);
  }

  @lazySingleton
  MainNavigator provideMainNavigator(AppRouter appRouter) {
    return MainNavigatorImpl(appRouter);
  }

  @lazySingleton
  MainRoutes provideMainRoutes() {
    return MainRoutesImpl();
  }
}
