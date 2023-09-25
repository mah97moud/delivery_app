import 'package:core/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class StylesManager {
  StylesManager._();

  static TextStyle textStyle34 = TextStyle(
    fontFamily: 'SF-Pro-Display',
    color: AppColors.textPrimary,
    fontSize: 34.w,
    fontWeight: FontWeight.w700,
  );
  static TextStyle textStyle17 = TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textSecondary,
    fontSize: 17.w,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle15 = TextStyle(
    fontFamily: 'SF-Pro-Text',
    fontSize: 15.w,
    fontWeight: FontWeight.w400,
  );
}
