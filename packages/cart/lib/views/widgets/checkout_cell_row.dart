import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutCellRow extends StatelessWidget {
  const CheckoutCellRow(
    this.title, {
    super.key,
    required this.iconPath,
    this.animationDelay,
  });
  final String title;
  final String iconPath;
  final double? animationDelay;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        iconPath,
        width: 20.0,
        height: 20.0,
        colorFilter:
            const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
      ),
      title: Text(title),
      titleTextStyle: StylesManager.textStyle17,
    ).animate().fade(
          delay: animationDelay?.ms,
        );
  }
}
