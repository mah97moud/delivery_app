import 'package:core/core/utils/app_colors.dart';
import 'package:core/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconBotton extends StatelessWidget {
  const AppIconBotton({
    super.key,
    this.tilte,
    this.bgColor,
    this.fgColor,
    required this.svgPath,
    this.onPressed,
  });

  final String? tilte;
  final Color? bgColor;
  final Color? fgColor;
  final String svgPath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.btn40Height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: fgColor ?? AppColors.white,
          backgroundColor: bgColor ?? AppColors.primaryButton,
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        child: SvgPicture.asset(
          svgPath,
          width: 20.0,
          height: 20.0,
          colorFilter:
              ColorFilter.mode(fgColor ?? Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}
