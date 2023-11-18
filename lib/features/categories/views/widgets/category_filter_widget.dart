import 'package:flutter/material.dart';

import '../views.dart';

class CategoryFilterWidget extends StatelessWidget {
  const CategoryFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ).copyWith(top: 40.0),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            children: [
              CategoryChip(
                'Сabbage and lettuce (14)',
                isSelected: true,
              ),
              CategoryChip(
                'Сucumbers and tomatoes (10)',
                isSelected: false,
              ),
              CategoryChip(
                'Oinons and garlic (8)',
                isSelected: false,
              ),
              CategoryChip(
                'Peppers (7)',
                isSelected: false,
              ),
              CategoryChip(
                'Potatoes and carrots (4)',
                isSelected: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
