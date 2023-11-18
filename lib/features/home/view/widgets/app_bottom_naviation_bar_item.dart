import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';

class AppBottomNaviationBarItem extends BottomNavigationBarItem {
  AppBottomNaviationBarItem({
    required String assetName,
  }) : super(
          label: '',
          icon: SvgPicture.asset(
            assetName,
          ),
          activeIcon: SvgPicture.asset(
            assetName,
            colorFilter: const ColorFilter.mode(
              AppColors.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        );
}
