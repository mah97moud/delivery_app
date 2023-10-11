import 'package:core/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip(
    this.title, {
    super.key,
    required this.isSelected,
  });
  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(20.0),
      child: Chip(
        backgroundColor:
            isSelected ? AppColors.selectedBgViolet : AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        avatar: isSelected
            ? SvgPicture.asset(
                AppAssets.check,
                colorFilter: const ColorFilter.mode(
                  AppColors.selectedViolet,
                  BlendMode.srcIn,
                ),
              )
            : null,
        labelStyle: isSelected
            ? StylesManager.textStyle14
                .copyWith(color: AppColors.selectedViolet)
            : StylesManager.textStyle14.copyWith(
                color: AppColors.textSecondary,
                fontWeight: FontWeight.w400,
              ),
        iconTheme: const IconThemeData(
          color: AppColors.selectedViolet,
        ),
        label: Text(
          title,
        ),
      ),
    );
  }
}
