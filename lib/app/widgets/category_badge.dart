import 'package:ecommerce_app/app/data/category.dart';
import 'package:flutter/material.dart';

class CategoryBadge extends StatelessWidget {
  final Category category;

  const CategoryBadge({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: category.isChoosen
            ? colorScheme.primary
            : colorScheme.onSurface.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: category.isChoosen ? colorScheme.surface : Colors.transparent,
          width: 2,
        ),
      ),
      child: Center(
        child: Image.asset(
          category.iconPath,
          color: category.isChoosen
              ? colorScheme.surface
              : colorScheme.onSurface.withValues(alpha: 0.8),
        ),
      ),
    );
  }
}
