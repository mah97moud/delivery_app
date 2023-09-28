import 'package:categories/views/widgets/sliver_custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCustomAppBar()
        ],
      ),
    );
  }
}
