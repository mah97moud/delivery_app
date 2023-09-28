import 'package:categories/views/widgets/app_bar_title_text.dart';
import 'package:categories/views/widgets/bottom_search_text_field.dart';
import 'package:flutter/material.dart';

class SliverCustomAppBar extends StatelessWidget {
  const SliverCustomAppBar({
    super.key,
    this.bottomChild,
  }); 
  final Widget? bottomChild;

  @override
  Widget build(BuildContext context) {
    return   SliverAppBar.medium(
      title: const AppBarTitleText('Categories'),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: bottomChild ?? const BottomSearchTextField(),
      ),
    );
  }
}
