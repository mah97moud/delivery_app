import 'package:cart/views/widgets/cart_items_view.dart';
import 'package:categories/categories.dart';
import 'package:categories/data/category_item_model.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

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
              onPressed: () {},
              tilte: 'CHECKOUT',
            ),
          ),
        ],
      ),
    );
  }
}
