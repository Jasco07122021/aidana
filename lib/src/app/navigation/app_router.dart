import 'package:aidana/src/app/navigation/app_router.gr.dart';
import 'package:aidana/src/app/navigation/src/guard/auth_guard.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  final AuthGuard _authGuard;

  AppRouter(this._authGuard) : super();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthRouteWrapper.page,
          children: [
            AutoRoute(page: AuthRoute.page, initial: true),
            AutoRoute(page: SignUpRoute.page),
          ],
        ),
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          guards: [_authGuard],
          children: [
            AutoRoute(page: RibbonRoute.page, initial: true),
            AutoRoute(page: MapRoute.page),
            AutoRoute(page: FavoritesRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
