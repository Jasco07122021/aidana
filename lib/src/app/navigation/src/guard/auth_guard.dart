import 'package:aidana/src/app/navigation/app_router.gr.dart';
import 'package:aidana/src/domain/usecase/session_usecase.dart';
import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final isLoggedIn = await GetIt.instance.get<CheckSession>().isLoggedIn();
    if (isLoggedIn) {
      resolver.next();
      return;
    }

    router.pushAndPopUntil(
      const AuthRoute(),
      predicate: (route) => true,
    );
  }
}
