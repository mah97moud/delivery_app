 
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRadioListTile extends StatefulWidget {
  const CustomRadioListTile(
    this.title, {
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  State<CustomRadioListTile> createState() => _CustomRadioListTileState();
}

class _CustomRadioListTileState extends State<CustomRadioListTile> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(widget.title),
      titleTextStyle: StylesManager.textStyle22,
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      splashColor: const Color(0xFF6C0EE4).withOpacity(0.08),
      trailing: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectedBgViolet : null,
          borderRadius: BorderRadius.circular(15),
          border: !isSelected
              ? Border.all(
                  width: 1,
                  color: AppColors.selectedBgViolet,
                )
              : null,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!isSelected)
              SvgPicture.asset(
                AppAssets.knob,
                height: 26,
              ).animate().slideX(
                    delay: 10.ms,
                    begin: 1.5,
                    end: 0,
                    curve: Curves.easeInCubic,
                  ),
            Padding(
              padding: isSelected
                  ? const EdgeInsets.only(left: 14.0, right: 8.0)
                  : const EdgeInsets.only(right: 14.0, left: 8.0),
              child: Text(
                isSelected ? 'Yes' : 'No',
                style: StylesManager.textStyle14.copyWith(
                  color: isSelected ? const Color(0xFF6C0EE4) : null,
                  fontWeight: FontWeight.w600,
                ),
              ).animate().fade(
                    delay: 100.ms,
                  ),
            ),
            if (isSelected)
              SvgPicture.asset(
                AppAssets.knob,
                height: 26,
              ).animate().slideX(
                    delay: 10.ms,
                    begin: -1.5,
                    end: 0,
                    curve: Curves.easeInCubic,
                  )
          ],
        ),
      ),
    );
  }
}
