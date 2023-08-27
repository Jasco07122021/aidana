import 'package:aidana/src/app/navigation/app_router.dart';
import 'package:aidana/src/app/navigation/app_router.gr.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/auth_navigation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

class AuthNavigatorImpl implements AuthNavigator {
  final AppRouter appRouter;

  const AuthNavigatorImpl(this.appRouter);

  @override
  Future<void> navigateAuthPage(BuildContext context) {
    return appRouter.replaceAll([const AuthRoute()]);
  }

  @override
  Future<void> navigateMainPage(BuildContext context) {
    return appRouter.replaceAll([const MainRoute()]);
  }

  @override
  Future<void> navigateSignUpPage(BuildContext context) {
    return context.router.navigate(const SignUpRoute());
  }
}
