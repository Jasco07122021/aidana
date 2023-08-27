import 'package:aidana/src/app/app_bloc/app_bloc_helper.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/profile_cubit/profile_cubit.dart';
import 'package:aidana/src/app/design_system/const/app_colors.dart';
import 'package:aidana/src/app/design_system/const/app_icons.dart';
import 'package:aidana/src/app/design_system/const/app_localization.dart';
import 'package:aidana/src/app/design_system/widgets/bottom_nav_bar_item.dart';
import 'package:aidana/src/app/navigation/src/routing_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MainPage extends AutoRouter implements AutoRouteWrapper {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileCubit>(
          create: (context) => AppBlocHelper.getProfileCubit(),
        ),
      ],
      child: this,
    );
  }
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      homeIndex: 0,
      routes: RoutingUtils.getMainRoutes(),
      bottomNavigationBuilder: _bottomNavigationBuilder,
    );
  }

  Widget _bottomNavigationBuilder(BuildContext context, TabsRouter tabsRouter) {
    return CupertinoTabBar(
      currentIndex: tabsRouter.activeIndex,
      activeColor: AppColors.mainColor,
      inactiveColor: CupertinoColors.black,
      onTap: (value) {
        if (value == tabsRouter.activeIndex &&
            tabsRouter.stackRouterOfIndex(value)?.canNavigateBack == true) {
          tabsRouter.stackRouterOfIndex(value)?.popUntilRoot();
        } else {
          tabsRouter.setActiveIndex(value);
        }
      },
      items: [
        BottomNavBarCustomItem(
          icon: AppIcons.icRibbon,
          label: LocalKeys.ribbon,
        ),
        BottomNavBarCustomItem(
          icon: AppIcons.icMap,
          label: LocalKeys.map,
        ),
        BottomNavBarCustomItem(
          icon: AppIcons.icFavorite,
          label: LocalKeys.favorite,
        ),
        BottomNavBarCustomItem(
          icon: AppIcons.icProfile,
          label: LocalKeys.profile,
        ),
      ],
    );
  }
}
