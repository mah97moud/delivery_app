import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/styles_manager.dart';
import '../categories.dart';
import '../data/category_item_model.dart';
import '../data/category_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = CategoryModel.fromJson(
      GoRouterState.of(context).uri.queryParameters['category'] as String,
    );

    const items = [
      CategoryItemModel(
        id: 1,
        image: AppAssets.c1,
        title: 'Boston Lettuce',
        price: 1.10,
        inFavourits: true,
      ),
      CategoryItemModel(
        id: 2,
        image: AppAssets.c2,
        title: 'Purple Cauliflower',
        price: 1.85,
        inFavourits: false,
      ),
      CategoryItemModel(
        id: 3,
        image: AppAssets.c1,
        title: 'Savoy Cabbage',
        price: 1.45,
        inFavourits: false,
      ),
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCustomAppBar(
            category.title,
            category: category,
            style: StylesManager.textStyle30,
          ),
          const CategoryFilterWidget(),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: 32.0,
            ),
            sliver: SliverGrid.builder(
              itemCount: 3,
              itemBuilder: (context, index) => CategoryItemWidget(item: items[index]),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 160.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
