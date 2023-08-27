import 'package:aidana/src/app/app_bloc/src/bloc/auth_cubit/auth_cubit.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/sign_in_cubit/sign_in_cubit.dart';
import 'package:aidana/src/app/design_system/const/app_localization.dart';
import 'package:aidana/src/data/core/app_extensions/string_ext.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

part 'widgets/text_fields.dart';

part 'widgets/buttons.dart';

part 'auth_listener.dart';

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return _AuthListener(
      child: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text(LocalKeys.authorization),
        ),
        child: ListView(
          padding: EdgeInsets.only(
            top: size.height * 0.4,
          ),
          children: [
            _TextFields(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
            ),
            _Buttons(
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}
