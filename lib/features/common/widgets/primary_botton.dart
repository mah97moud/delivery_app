import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_sizes.dart';
import '../../../core/utils/styles_manager.dart';

class PrimaryBotton extends StatelessWidget {
  const PrimaryBotton({
    super.key,
    this.icon,
    this.tilte,
    this.bgColor,
    this.fgColor,
    required this.onPressed,
  });

  final Widget? icon;
  final String? tilte;
  final Color? bgColor;
  final Color? fgColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      height: AppSizes.primaryBtnHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: fgColor ?? AppColors.white,
          backgroundColor: bgColor ?? AppColors.primaryButton,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        child: icon ??
            Text(
              tilte ?? 'ORDER NOW',
              style: StylesManager.textStyle15,
            ),
      ),
    );
  }
}
