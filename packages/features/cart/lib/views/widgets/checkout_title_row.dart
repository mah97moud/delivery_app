import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CheckoutTitleRow extends StatelessWidget {
  const CheckoutTitleRow(
    this.title, {
    super.key,
    required this.onPressed,
    this.animationDelay,
  });

  final String title;
  final VoidCallback onPressed;
  final double? animationDelay;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: StylesManager.textStyle22,
        ),
        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'Change'.toUpperCase(),
            style: StylesManager.textStyle15.copyWith(
              color: AppColors.selectedViolet,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ).animate().fade(
          delay: animationDelay?.ms,
        );
  }
}
