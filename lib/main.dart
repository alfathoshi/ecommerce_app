import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_app/app/themes/app_themes.dart';
import 'package:ecommerce_app/app/themes/theme_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ThemeController());
  // runApp(DevicePreview(enabled: !kReleaseMode, builder: (_) => MainApp()));
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final theme = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        // useInheritedMediaQuery: true,
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: theme.themeMode.value,
      ),
    );
  }
}
