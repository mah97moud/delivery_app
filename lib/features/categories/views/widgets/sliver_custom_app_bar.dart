import 'package:flutter/material.dart';

import '../../data/category_model.dart';
import '../views.dart';

class SliverCustomAppBar extends StatelessWidget {
  const SliverCustomAppBar(
    this.title, {
    super.key,
    this.bottomChild,
    this.category,
    this.style,
  });
  final Widget? bottomChild;
  final String? title;
  final CategoryModel? category;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.medium(
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(bottom: 60.0, left: 20.0),
        centerTitle: false,
        stretchModes: const [StretchMode.fadeTitle],
        title: AppBarTitleText(
          title,
          style: style,
        ),
        background: category != null
            ? Hero(
                tag: category?.title ?? '',
                child: Image.asset(
                  category?.categoryType ?? '',
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.centerRight,
                ),
              )
            : null,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: bottomChild ?? const BottomSearchTextField(),
      ),
    );
  }
}
