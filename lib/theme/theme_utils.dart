import 'package:flutter/material.dart';

class ThemeUtils {
  // Radius (similar to Tailwind's borderRadius)
  static const double radius = 8.0; // lg

  // Simple color manipulation for dark mode
  static Color darken(Color color) {
    return Color.fromRGBO(
      (color.red * 0.8).round(),
      (color.green * 0.8).round(),
      (color.blue * 0.8).round(),
      1,
    );
  }

  // Animation (similar to keyframes and animation)
  static const Duration animationDuration = Duration(milliseconds: 200);
  static Curve animationCurve = Curves.easeOut;
}
