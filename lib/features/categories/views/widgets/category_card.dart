import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/app_sized_box.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../data/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.category,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.goNamed(
            RoutesNames.category,
            queryParameters: {
              'category': category.toJson(),
            },
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              category.image,
              height: 140.0,
              fit: BoxFit.cover,
            ),
            AppSizedBoxed.sizedBoxH10,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title,
                    style: StylesManager.textStyle18,
                  ),
                  AppSizedBoxed.sizedBoxH10,
                  Text(
                    '(${category.count})',
                    style: StylesManager.textStyle12,
                  ),
                ],
              ),
            ),
            AppSizedBoxed.sizedBoxH16,
          ],
        ),
      ),
    );
  }
}
