import 'package:flutter/material.dart';

import '../../../../core/utils/app_sized_box.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../data/category_item_model.dart';

class ItemPriceWidget extends StatelessWidget {
  const ItemPriceWidget({
    super.key,
    required this.item,
    this.valueStyle,
    this.symbolStyle,
  });

  final CategoryItemModel item;
  final TextStyle? valueStyle;
  final TextStyle? symbolStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item.price?.toString() ?? '',
          style: valueStyle ?? StylesManager.textStyle22,
        ),
        AppSizedBoxed.sizedBoxW5,
        Text(
          '€ / piece',
          style: symbolStyle ?? StylesManager.textStyle16,
        )
      ],
    );
  }
}
