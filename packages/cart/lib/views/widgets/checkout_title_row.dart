import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CheckoutTitleRow extends StatelessWidget {
  const CheckoutTitleRow(
    this.title, {
    super.key,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
    ]);
  }
}
