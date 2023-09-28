import 'package:core/core/routes/route_names.dart';
import 'package:core/core/utils/app_colors.dart';
import 'package:core/core/utils/app_sizes.dart';
import 'package:core/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PrimaryBotton extends StatelessWidget {
  const PrimaryBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      width: double.infinity,
      height: AppSizes.primaryBtnHeight,
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(RoutesNames.categories);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.primaryButton,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
        child: Text(
          'ORDER NOW',
          style: StylesManager.textStyle15,
        ),
      ),
    );
  }
}
