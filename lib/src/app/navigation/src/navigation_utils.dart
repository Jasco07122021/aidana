import 'package:aidana/src/app/navigation/src/app_navigators/auth_navigation.dart';
import 'package:aidana/src/app/navigation/src/app_navigators/main_navigation.dart';
import 'package:get_it/get_it.dart';

mixin NavigationUtils {
  static AuthNavigator getAuthNavigator() {
    return GetIt.I.get<AuthNavigator>();
  }

  static MainNavigator getMainNavigator() {
    return GetIt.I.get<MainNavigator>();
  }
}
