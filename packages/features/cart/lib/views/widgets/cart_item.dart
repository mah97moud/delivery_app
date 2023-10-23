 
import 'package:categories/data/category_item_model.dart';
import 'package:categories/views/widgets/item_price_widget.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.items,
    required this.index,
  });

  final int index;
  final List<CategoryItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      child: Row(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              image: DecorationImage(
                image: AssetImage(
                  items[index].image ?? '',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AppSizedBoxed.sizedBoxW20,
          SizedBox(
            width: MediaQuery.sizeOf(context).width - 240,
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  items[index].title ?? '',
                  style: StylesManager.textStyle18.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ItemPriceWidget(item: items[index]),
                const Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
