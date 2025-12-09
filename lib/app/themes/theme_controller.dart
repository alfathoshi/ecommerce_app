import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController with WidgetsBindingObserver {
  var themeMode = ThemeMode.system.obs;

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    super.onInit();
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }
  
  @override
  void didChangePlatformBrightness() {
    if (themeMode.value == ThemeMode.system) {
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      themeMode.value = brightness == Brightness.dark
          ? ThemeMode.dark
          : ThemeMode.light;
      Get.changeThemeMode(themeMode.value);
    }
    super.didChangePlatformBrightness();
  }

  void toggleTheme(bool isDark) {
    themeMode.value = isDark ? ThemeMode.dark : ThemeMode.light;
    Get.changeThemeMode(themeMode.value);
  }
}
