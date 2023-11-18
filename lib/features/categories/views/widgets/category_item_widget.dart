import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_sized_box.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../common/widgets/widgets.dart';
import '../../data/category_item_model.dart';
import '../../data/category_model.dart';
import 'item_price_widget.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.item,
  });

  final CategoryItemModel item;

  @override
  Widget build(BuildContext context) {
    final category = CategoryModel.fromJson(
      GoRouterState.of(context).uri.queryParameters['category'] as String,
    );

    return Container(
      height: 128.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      child: InkWell(
        onTap: () {
          context.goNamed(
            RoutesNames.categoryItem,
            queryParameters: {
              'categoryItem': item.toJson(),
              'category': category.toJson(),
            },
          );
        },
        child: Row(
          children: [
            Hero(
              tag: item.title ?? '',
              child: Container(
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
                  ItemPriceWidget(item: item),
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
      ),
    );
  }
}
