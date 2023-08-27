// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aidana/src/app/feature/feature_home/pages/favorites_page.dart'
    as _i3;
import 'package:aidana/src/app/feature/feature_home/pages/main_page.dart'
    as _i4;
import 'package:aidana/src/app/feature/feature_home/pages/map_page.dart' as _i5;
import 'package:aidana/src/app/feature/feature_home/pages/profile_page/profile_page.dart'
    as _i6;
import 'package:aidana/src/app/feature/feature_home/pages/ribbon_page.dart'
    as _i7;
import 'package:aidana/src/app/feature/feature_login/pages/auth_page/auth_page.dart'
    as _i1;
import 'package:aidana/src/app/feature/feature_login/pages/auth_page/auth_wrapper.dart'
    as _i2;
import 'package:aidana/src/app/feature/feature_login/pages/sign_up_page.dart'
    as _i8;
import 'package:auto_route/auto_route.dart' as _i9;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    AuthRouteWrapper.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: const _i2.AuthPageWrapper()),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavoritesPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: const _i4.MainPage()),
      );
    },
    MapRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MapPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    RibbonRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RibbonPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i9.PageRouteInfo<void> {
  const AuthRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthPageWrapper]
class AuthRouteWrapper extends _i9.PageRouteInfo<void> {
  const AuthRouteWrapper({List<_i9.PageRouteInfo>? children})
      : super(
          AuthRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthRouteWrapper';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FavoritesPage]
class FavoritesRoute extends _i9.PageRouteInfo<void> {
  const FavoritesRoute({List<_i9.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MapPage]
class MapRoute extends _i9.PageRouteInfo<void> {
  const MapRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RibbonPage]
class RibbonRoute extends _i9.PageRouteInfo<void> {
  const RibbonRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RibbonRoute.name,
          initialChildren: children,
        );

  static const String name = 'RibbonRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
