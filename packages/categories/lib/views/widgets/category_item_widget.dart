import 'package:categories/data/category_item_model.dart';
import 'package:core/core/core.dart';
import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.item,
  });

  final CategoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      child: Row(
        children: [
          Container(
            width: 177.0,
            height: 128.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  item.image ?? '',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppSizedBoxed.sizedBoxW20,
          SizedBox(
            width: MediaQuery.sizeOf(context).width - 240,
            height: 128.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item.title ?? '',
                  style: StylesManager.textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      item.price?.toString() ?? '',
                      style: StylesManager.textStyle22,
                    ),
                    Text(
                      '€ / piece',
                      style: StylesManager.textStyle16,
                    )
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: AppIconBotton(
                        onPressed: () {},
                        svgPath: AppAssets.heart,
                        bgColor: AppColors.white,
                        fgColor: AppColors.textSecondary,
                      ),
                    ),
                    AppSizedBoxed.sizedBoxW20,
                    Expanded(
                      child: AppIconBotton(
                        onPressed: () {},
                        svgPath: AppAssets.shoppingCart,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
