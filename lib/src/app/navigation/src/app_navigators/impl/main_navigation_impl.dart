import 'package:aidana/src/app/navigation/app_router.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/main_navigation.dart';

class MainNavigatorImpl implements MainNavigator {
  final AppRouter appRouter;

  const MainNavigatorImpl(this.appRouter);
}
