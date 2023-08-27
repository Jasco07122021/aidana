import 'package:aidana/src/app/design_system/const/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarCustomItem extends BottomNavigationBarItem {
  BottomNavBarCustomItem({
    required String icon,
    required super.label,
  }) : super(
          icon: SvgPicture.asset(
            icon,
            color: CupertinoColors.black,
          ),
          activeIcon: SvgPicture.asset(
            icon,
            color: AppColors.mainColor,
          ),
        );
}
