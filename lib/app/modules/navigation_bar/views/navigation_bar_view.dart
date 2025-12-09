import 'package:ecommerce_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../controllers/navigation_bar_controller.dart';

class NavigationBarView extends GetView<NavigationBarController> {
  const NavigationBarView({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return PopScope(
      child: Obx(
        () => Scaffold(
          body: IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.pages,
          ),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            selectedItemColor: colorScheme.primary,
            unselectedItemColor:
                theme.bottomNavigationBarTheme.unselectedItemColor,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) {
              if (index == 2) {
                Get.toNamed(Routes.CART);
                return;
              }
              controller.changeIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.heart),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cartShopping),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.user),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
