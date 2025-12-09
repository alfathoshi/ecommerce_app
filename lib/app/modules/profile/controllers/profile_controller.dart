import 'package:ecommerce_app/app/themes/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final themeC = Get.find<ThemeController>();

  bool get isDark {
    // Jika user pakai system theme, kita cek device mode
    if (themeC.themeMode.value == ThemeMode.system) {
      return Get.isDarkMode;
    }
    // Selain itu, cek apakah themeMode saat ini dark
    return themeC.themeMode.value == ThemeMode.dark;
  }
}
