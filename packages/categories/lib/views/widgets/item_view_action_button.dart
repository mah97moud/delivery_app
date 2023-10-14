import 'package:core/core.dart';
import 'package:flutter/material.dart';

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
