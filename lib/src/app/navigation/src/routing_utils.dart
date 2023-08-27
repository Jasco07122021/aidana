import 'package:aidana/src/app/navigation/src/app_routes/main_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

mixin RoutingUtils {
  static List<PageRouteInfo> getMainRoutes() {
    final mainRoutes = GetIt.I.get<MainRoutes>();
    return [
      mainRoutes.getRibbonRouter(),
      mainRoutes.getMapRouter(),
      mainRoutes.getFavoritesRouter(),
      mainRoutes.getProfileRouter(),
    ];
  }

  static PageRouteInfo getRibbonRouter() {
    return GetIt.I.get<MainRoutes>().getRibbonRouter();
  }

  static PageRouteInfo getMapRouter() {
    return GetIt.I.get<MainRoutes>().getMapRouter();
  }

  static PageRouteInfo getFavoritesRouter() {
    return GetIt.I.get<MainRoutes>().getFavoritesRouter();
  }

  static PageRouteInfo getProfileRouter() {
    return GetIt.I.get<MainRoutes>().getProfileRouter();
  }
}
