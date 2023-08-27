import 'package:aidana/src/app/design_system/const/app_localization.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(LocalKeys.favorite),
      ),
      child: SizedBox(),
    );
  }
}
