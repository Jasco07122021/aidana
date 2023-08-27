import 'package:aidana/src/app/app_bloc/src/bloc/auth_cubit/auth_cubit.dart';
import 'package:aidana/src/app/app_bloc/src/bloc/profile_cubit/profile_cubit.dart';
import 'package:aidana/src/app/design_system/const/app_icons.dart';
import 'package:aidana/src/app/design_system/const/app_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'widgets/header.dart';

part 'widgets/logout_button.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(LocalKeys.profile),
      ),
      child: SafeArea(
        child: Column(
          children: [
            _Header(),
            _LogoutButton(),
          ],
        ),
      ),
    );
  }
}
