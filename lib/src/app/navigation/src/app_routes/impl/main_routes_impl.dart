import 'package:aidana/src/app/navigation/app_router.gr.dart';
import 'package:aidana/src/app/navigation/src/app_routes/main_router.dart';
import 'package:auto_route/auto_route.dart';

class MainRoutesImpl implements MainRoutes {
  @override
  PageRouteInfo getFavoritesRouter() {
    return const FavoritesRoute();
  }

  @override
  PageRouteInfo getMapRouter() {
    return const MapRoute();
  }

  @override
  PageRouteInfo getProfileRouter() {
    return const ProfileRoute();
  }

  @override
  PageRouteInfo getRibbonRouter() {
    return const RibbonRoute();
  }
}
