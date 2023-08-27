import 'package:auto_route/auto_route.dart';

abstract class MainRoutes {
  PageRouteInfo getRibbonRouter();

  PageRouteInfo getMapRouter();

  PageRouteInfo getFavoritesRouter();

  PageRouteInfo getProfileRouter();
}
