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

  static TextStyle textStyle32 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textPrimary,
    fontSize: 32,
    fontWeight: FontWeight.w700,
  );

  /// font size 30
  /// font weight 700
  /// color text primary
  /// font family SF Pro Display
  static TextStyle textStyle30 = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    color: AppColors.textPrimary,
    fontSize: 30,
    fontWeight: FontWeight.w700,
  );

  static TextStyle textStyle24 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textSecondary,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  /// font size 26
  /// font weight 500
  /// color text white
  /// font family SF Pro Display

  static TextStyle textStyle26 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.white,
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle16 = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    color: AppColors.textSecondary,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );

  /// font size 17
  /// font weight 400
  /// color text secondary
  /// font family SF Pro Text
  static TextStyle textStyle17 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textSecondary,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle18 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textPrimary,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  /// font size 20
  /// font weight 500
  /// color text primary
  /// font family SF Pro Text
  static TextStyle textStyle20 = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  /// font size 22
  /// font weight 700
  /// color text primary
  /// font family SF Pro Text
  static TextStyle textStyle22 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    color: AppColors.textPrimary,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );

  /// font size 15
  /// font weight 400
  /// font family SF Pro Text
  static TextStyle textStyle15 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle14 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle12 = const TextStyle(
    fontFamily: 'SF-Pro-Text',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
}
