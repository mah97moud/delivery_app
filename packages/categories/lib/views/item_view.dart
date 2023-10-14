import 'package:categories/views/widgets/back_drob_widget.dart';
import 'package:categories/views/widgets/item_price_widget.dart';
import 'package:categories/views/widgets/item_view_action_button.dart';
import 'package:categories/views/widgets/widgets.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/category_item_model.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemJson =
        GoRouterState.of(context).uri.queryParameters['categoryItem'];
    final item = CategoryItemModel.fromJson(
      itemJson as String,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCustomCategoryItemAppBar(
            item.title,
            item: item,
            style: StylesManager.textStyle18,
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemPriceWidget(
                    item: item,
                    valueStyle: StylesManager.textStyle32,
                    symbolStyle: StylesManager.textStyle24,
                  ),
                  AppSizedBoxed.sizedBoxH8,
                  const BackDrobWidget(),
                  AppSizedBoxed.sizedBoxH32,
                  Text(
                    'Spain',
                    style: StylesManager.textStyle22,
                  ),
                  AppSizedBoxed.sizedBoxH16,
                  Text(
                    'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                    style: StylesManager.textStyle17,
                  ),
                  AppSizedBoxed.sizedBoxH56,
                  const ItemViewActionButton(),
                  AppSizedBoxed.sizedBoxH56,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
