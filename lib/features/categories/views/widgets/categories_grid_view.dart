import 'package:flutter/material.dart';

import '../../data/category_model.dart';
import 'category_card.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({
    super.key,
    required List<CategoryModel> list,
  }) : _list = list;

  final List<CategoryModel> _list;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: _list.length,
          itemBuilder: (context, index) {
            final category = _list[index];
            return CategoryCard(
              category: category,
            );
          },
        ),
      ),
    );
  }
}
