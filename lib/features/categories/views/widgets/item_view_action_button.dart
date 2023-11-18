import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_sized_box.dart';
import '../../../common/widgets/widgets.dart';

class ItemViewActionButton extends StatelessWidget {
  const ItemViewActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIconBotton(
          onPressed: () {},
          svgPath: AppAssets.heart,
          bgColor: AppColors.white,
          fgColor: AppColors.textSecondary,
        ),
        AppSizedBoxed.sizedBoxW20,
        Expanded(
          child: AppIconBotton(
            onPressed: () {},
            tilte: 'Add to cart'.toUpperCase(),
            svgPath: AppAssets.shoppingCart,
          ),
        ),
      ],
    );
  }
}
