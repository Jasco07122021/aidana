import 'package:aidana/src/app/app_bloc/app_bloc_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthPageWrapper extends AutoRouter implements AutoRouteWrapper {
  const AuthPageWrapper({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    /// need init => BlocProviders
    return BlocProvider(
      create: (context) => AppBlocHelper.getSignInCubit(),
      child: this,
    );
  }
}
