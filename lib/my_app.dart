import 'package:aidana/src/app/app_bloc/app_bloc_helper.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/auth_cubit/auth_cubit.dart';
import 'package:aidana/src/app/design_system/const/app_colors.dart';
import 'package:aidana/src/app/navigation/app_router.dart';
import 'package:aidana/src/app/navigation/src/navigation_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBlocHelper.getAuthCubit(),
      child: const _AidanaApp(),
    );
  }
}

class _AidanaApp extends StatefulWidget {
  const _AidanaApp();

  @override
  State<_AidanaApp> createState() => _AidanaAppState();
}

class _AidanaAppState extends State<_AidanaApp> {
  late final appRouter = GetIt.I.get<AppRouter>();
  late final easyLoading = GetIt.I.get<EasyLoading>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          userAuthorized: () {
            return NavigationUtils.getAuthNavigator().navigateMainPage(context);
          },
          userUnauthorized: () {
            return NavigationUtils.getAuthNavigator().navigateAuthPage(context);
          },
        );
      },
      child: CupertinoApp.router(
        theme: const CupertinoThemeData(
          scaffoldBackgroundColor: AppColors.pageBackground,
        ),
        routerConfig: appRouter.config(),
        builder: EasyLoading.init(),
      ),
    );
  }
}
