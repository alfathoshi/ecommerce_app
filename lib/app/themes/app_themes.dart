import 'package:ecommerce_app/app/themes/app_colors.dart';
import 'package:ecommerce_app/app/themes/app_fonts.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.secondary,
      onSecondary: AppColors.black,
      error: AppColors.danger,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
      primaryContainer: AppColors.placeholder,
    ),
    textTheme: TextTheme(
      headlineLarge: AppFonts.heading1,
      headlineMedium: AppFonts.heading2,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.body,
      bodySmall: AppFonts.caption,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.gray500,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.black,
      elevation: 0,
    ),
  );

  // DARK THEME
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBg,

    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.secondary,
      onSecondary: AppColors.darkText,
      error: AppColors.danger,
      onError: AppColors.white,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkText,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkSurface,
      foregroundColor: AppColors.darkText,
      elevation: 0,
    ),

    textTheme: TextTheme(
      headlineLarge: AppFonts.heading1.copyWith(color: AppColors.darkText),
      headlineMedium: AppFonts.heading2.copyWith(color: AppColors.darkText),
      bodyLarge: AppFonts.bodyLarge.copyWith(color: AppColors.darkText),
      bodyMedium: AppFonts.body.copyWith(color: AppColors.darkText),
      bodySmall: AppFonts.caption.copyWith(color: AppColors.darkTextWeak),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      hintStyle: const TextStyle(color: AppColors.darkTextWeak),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkSurface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.darkTextWeak,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
