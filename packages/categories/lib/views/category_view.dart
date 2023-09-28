import 'package:categories/data/category_model.dart';
import 'package:core/core/core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/sliver_custom_app_bar.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = CategoryModel.fromJson(
      GoRouterState.of(context).pathParameters['category'] as String,
    );
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCustomAppBar(
            category.title,
            category: category,
            style: StylesManager.textStyle30,
          ),
        ],
      ),
    );
  }
}
