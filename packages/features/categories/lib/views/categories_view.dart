import 'package:categories/data/category_model.dart';
import 'package:categories/views/widgets/categories_grid_view.dart';
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
    const CategoryModel(
      image: AppAssets.test,
      title: 'Vegetables',
      count: 43,
      categoryType: AppAssets.vegetables,
    ),
    const CategoryModel(
      image: AppAssets.fruits,
      title: 'Fruits',
      count: 32,
      categoryType: AppAssets.apple,
    ),
    const CategoryModel(
      image: AppAssets.bread,
      title: 'Bread',
      count: 22,
      categoryType: AppAssets.breadBg,
    ),
    const CategoryModel(
      image: AppAssets.sweets,
      title: 'Sweets',
      count: 56,
      categoryType: AppAssets.cupcake,
    ),
    const CategoryModel(
      image: AppAssets.pasta,
      title: 'Pasta',
      count: 25,
      categoryType: AppAssets.pastaBg,
    ),
    const CategoryModel(
      image: AppAssets.drinks,
      title: 'Drinks',
      count: 10,
      categoryType: AppAssets.drinksBg,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverCustomAppBar('Categories'),
          CategoriesGridView(list: _list),
        ],
      ),
    );
  }
}
