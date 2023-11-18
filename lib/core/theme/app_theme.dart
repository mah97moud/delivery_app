import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/styles_manager.dart';

sealed class AppTheme {}

class LightAppTheme {
  static ThemeData get theme => _theme;
  static final ThemeData _theme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
    ),
    scaffoldBackgroundColor: AppColors.background,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.white,
      filled: true,
      hintStyle: StylesManager.textStyle17,
      contentPadding: const EdgeInsets.only(
        top: 12.0,
        bottom: 12.0,
        right: 22.0,
      ),
      prefixIconColor: Colors.black,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
        borderSide: const BorderSide(color: AppColors.border),
      ),
    ),
  );
}
