import 'package:acatools_app/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'theme_utils.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      colorScheme: ColorScheme.light(
        primary: AppColors.primaryColor,
        onPrimary: AppColors.primaryForeground,
        secondary: AppColors.secondaryColor,
        onSecondary: AppColors.secondaryForeground,
        surface: AppColors.cardColor,
        onSurface: AppColors.cardForeground,
        error: AppColors.destructiveColor,
        onError: AppColors.destructiveForeground,
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(ThemeUtils.radius),
        ),
        elevation: 2,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeUtils.radius - 2),
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(ThemeUtils.radius - 2),
          borderSide: BorderSide(color: AppColors.ringColor),
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        onPrimary: AppColors.primaryForeground,
        secondary: AppColors.secondaryColor,
        onSecondary: AppColors.secondaryForeground,
        surface: ThemeUtils.darken(AppColors.cardColor),
        onSurface: AppColors.cardForeground,
        error: AppColors.destructiveColor,
        onError: AppColors.destructiveForeground,
      ),
      cardTheme: lightTheme.cardTheme,
      inputDecorationTheme: lightTheme.inputDecorationTheme,
    );
  }
}
