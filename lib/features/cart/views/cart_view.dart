import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/route_names.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/styles_manager.dart';
import '../../categories/categories.dart';
import '../../categories/data/category_item_model.dart';
import '../../common/widgets/widgets.dart';
import '../cart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
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
          SliverAppBar.medium(
            title: AppBarTitleText(
              'Cart',
              style: StylesManager.textStyle30,
            ),
          ),
          const CartItemsView(items: items),
          SliverToBoxAdapter(
            child: PrimaryBotton(
              onPressed: () {
                context.pushNamed(RoutesNames.checkout);
              },
              tilte: 'CHECKOUT',
            ),
          ),
        ],
      ),
    );
  }
}
