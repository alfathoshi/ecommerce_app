import 'package:ecommerce_app/app/data/product.dart';
import 'package:ecommerce_app/app/modules/home/controllers/home_controller.dart';
import 'package:ecommerce_app/app/themes/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final controller = Get.find<HomeController>();

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.onSurface.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: .start,

          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.onSurface.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    '${product.discount}% OFF',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.toggleFavorite(
                      controller.products.indexOf(product),
                    );
                  },
                  icon:
                      product.isFavorite
                      ? Icon(
                          FontAwesomeIcons.solidHeart,
                          color: colorScheme.error,
                        )
                      : Icon(FontAwesomeIcons.heart),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                      colorScheme.surface,
                    ),
                  ),
                ),
              ],
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: Center(child: Image.asset(product.imageUrl)),
            ),
            AppSpacing.h16,
            Text(
              product.name,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            AppSpacing.h8,
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  '\$ ${product.discountedPrice}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$ ${product.price}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: theme.textTheme.bodySmall?.color
                        ?.withValues(alpha: 0.4),
                    color: theme.textTheme.bodySmall?.color?.withValues(
                      alpha: 0.4,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
