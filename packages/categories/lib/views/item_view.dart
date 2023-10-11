import 'package:categories/views/widgets/widgets.dart';
import 'package:core/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../data/category_item_model.dart';

class CategoryItemView extends StatelessWidget {
  const CategoryItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var itemJson = GoRouterState.of(context).uri.queryParameters['categoryItem'];
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
        ],
      ),
    );
  }
}
