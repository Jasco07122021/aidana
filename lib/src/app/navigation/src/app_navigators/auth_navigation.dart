import 'package:flutter/cupertino.dart';

abstract class AuthNavigator {
  Future<void> navigateAuthPage(BuildContext context);

  Future<void> navigateSignUpPage(BuildContext context);

  Future<void> navigateMainPage(BuildContext context);
}
