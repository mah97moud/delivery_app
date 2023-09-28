import 'package:categories/data/category_model.dart';
import 'package:categories/views/widgets/category_card.dart';
import 'package:categories/views/widgets/sliver_custom_app_bar.dart';
import 'package:core/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  final _list = <CategoryModel>[
    const CategoryModel(image: AppAssets.test, title: 'Vegetables', count: 43),
    const CategoryModel(image: AppAssets.fruits, title: 'Fruits', count: 32),
    const CategoryModel(image: AppAssets.bread, title: 'Bread', count: 22),
    const CategoryModel(image: AppAssets.sweets, title: 'Sweets', count: 56),
    const CategoryModel(image: AppAssets.pasta, title: 'Pasta', count: 25),
    const CategoryModel(image: AppAssets.drinks, title: 'Drinks', count: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverCustomAppBar(),
          SliverFillRemaining(
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
          ),
        ],
      ),
    );
  }
}
