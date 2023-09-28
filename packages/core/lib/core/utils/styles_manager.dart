import 'package:core/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class StylesManager {
  StylesManager._();

  static TextStyle textStyle34 = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    color: AppColors.textPrimary,
    fontSize: 34,
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyle17 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textSecondary,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle15 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
}
