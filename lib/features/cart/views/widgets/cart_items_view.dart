import 'package:flutter/material.dart';

import '../../../categories/data/category_item_model.dart';
import 'cart_item.dart';

class CartItemsView extends StatelessWidget {
  const CartItemsView({
    super.key,
    required this.items,
  });

  final List<CategoryItemModel> items;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 32.0,
      ),
      sliver: SliverGrid.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => CartItem(
          items: items,
          index: index,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 130.0,
        ),
      ),
    );
  }
}
