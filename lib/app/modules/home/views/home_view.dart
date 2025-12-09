import 'package:ecommerce_app/app/routes/app_pages.dart';
import 'package:ecommerce_app/app/themes/app_spacing.dart';
import 'package:ecommerce_app/app/widgets/category_badge.dart';
import 'package:ecommerce_app/app/widgets/product_card.dart';
import 'package:ecommerce_app/app/widgets/promo_banner.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.alignLeft),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colorScheme.surface),
            ),
          ),
          actionsPadding: const EdgeInsets.symmetric(horizontal: 12),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colorScheme.surface),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hello Folla',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppSpacing.w8,
                    Image.asset('assets/icons/hand.png'),
                  ],
                ),
                AppSpacing.h8,
                Text('Lets Start Shopping!', style: theme.textTheme.bodySmall),
                AppSpacing.h24,
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    itemBuilder: (_, _) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: PromoBanner(),
                      );
                    },
                  ),
                ),
                AppSpacing.h24,
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      'Top Categories',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' See All',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                AppSpacing.h32,
                SizedBox(
                  height: 64,
                  child: ListView.builder(
                    itemCount: controller.dummyCategories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final category = controller.dummyCategories[index];

                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: GestureDetector(
                          onTap: () => controller.selectCategory(index),
                          child: CategoryBadge(category: category),
                        ),
                      );
                    },
                  ),
                ),
                AppSpacing.h32,
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.products.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.PRODUCT_DETAIL,
                          arguments: {'product': controller.products[index]},
                        );
                      },
                      child: ProductCard(product: controller.products[index]),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
