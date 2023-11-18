import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/category_item_model.dart';

class SliverCustomCategoryItemAppBar extends StatelessWidget {
  const SliverCustomCategoryItemAppBar(
    this.title, {
    super.key,
    this.bottomChild,
    required this.item,
    this.style,
  });
  final Widget? bottomChild;
  final String? title;
  final CategoryItemModel item;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      expandedHeight: 414.0,
      flexibleSpace: FlexibleSpaceBar(
          centerTitle: false,
          expandedTitleScale: 2,
          stretchModes: const [StretchMode.fadeTitle],
          titlePadding: EdgeInsets.zero,
          title: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(bottom: 14.0, left: 20.0, right: 20.0, top: 37.0),
                  decoration: const BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      )),
                  child: Text(
                    title ?? '',
                    style: style,
                  ),
                ),
              ),
            ],
          ),
          background: Hero(
            tag: item.title ?? '',
            child: Image.asset(
              item.image ?? '',
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          )),
      // bottom: PreferredSize(
      //   preferredSize: const Size.fromHeight(80),
      //   child: bottomChild ?? const BottomSearchTextField(),
      // ),
    );
  }
}
