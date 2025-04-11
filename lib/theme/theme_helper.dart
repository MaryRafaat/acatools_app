import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable

class ThemeHelper {
// The current app theme

  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app /

  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app

  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': Colorschemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].

  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the lightCode colors for the current theme.

  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.

  ThemeData _getThemeData() {
    var colorscheme =
        _supportedColorScheme[_appTheme] ?? Colorschemes.lightCodeColorScheme;

    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorscheme,
      textTheme: TextThemes.textTheme(colorscheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorscheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: colorscheme.primary,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorscheme.primary;
          }
          return Colors.transparent;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 5,
        space: 5,
        color: appTheme.black900,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.

  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.

  ThemeData themeData() => _getThemeData();
}

/// class containing the supported text theme styles.

class TextThemes {
  static TextTheme textTheme(ColorScheme colorscheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray10001,
          fontSize: 16.fsize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 15.fsize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 12.fsize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 50.fsize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          color: colorscheme.onPrimaryContainer,
          fontSize: 36.fsize,
          fontFamily: 'Everett',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 28.fsize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fsize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fsize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 20.fsize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w800,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fsize,
          fontWeight: FontWeight.w600,
          fontFamily: 'Nunito Sans',
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fsize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// class containing the supported color schemes.

class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
  // Blue
  Color get blue200 => Color(0XFF8BC6FF);
  Color get blue50 => Color(0XFFD9E4FF);
  Color get blueA700 => Color(0XFF004CFF);
  Color get blueA70001 => Color(0XFF004BFF);
  Color get blueA70002 => Color(0XFF004BFE);
  // BlueGray
  Color get blueGray100 => Color(0XFFD2D2D2);
  Color get blueGray10001 => Color(0XFFD4D8DB);
  Color get blueGray40029 => Color(0X298D8D8D);
  // Gray
  Color get gray100 => Color(0XFFF2F5FE);
  Color get gray10001 => Color(0XFFF3F3F3);
  Color get gray10002 => Color(0XFFF5F5F5);
  Color get gray10003 => Color(0XFFF4F5F6);
  Color get gray200 => Color(0XFFF1F0F0);
  Color get gray20001 => Color(0XFFE7E8EB);
  Color get gray200B7 => Color(0XB7E8E8E8);
  Color get gray300 => Color(0XFFDBDBDB);
  Color get gray30001 => Color(0XFFE2E5E7);
  Color get gray400 => Color(0XFFC6C6C6);
  Color get gray50 => Color(0XFFF8F8F8);
  Color get gray500 => Color(0XFFB5A2A2);
  Color get gray5001 => Color(0XFFF8FAFF);
  Color get gray5002 => Color(0XFFF5F8FF);
  Color get gray900 => Color(0XFF202020);
  Color get gray90001 => Color(0XFF1E1E1E);
  Color get gray90002 => Color(0XFF231F20);
  // Green
  Color get greenA700 => Color(0XFF08C514);
  // Indigo
  Color get indigo200 => Color(0XFF9EB4E8);
  Color get indigo400 => Color(0XFF5982DA);
  Color get indigo50 => Color(0XFFE5EBFC);
  Color get indigo900 => Color(0XFF1A3168);
  Color get indigoA700 => Color(0XFF1A21F0);
  // Orange
  Color get orangeA100 => Color(0XFFFFD470);
  Color get orangeA700 => Color(0XFFFF5F00);
  // Pink
  Color get pink300 => Color(0XFFFF5790);
  // Red
  Color get red100 => Color(0XFFF8CECE);
  Color get red200 => Color(0XFFF1AEAE);
  Color get red300 => Color(0XFFD97474);
  Color get red50 => Color(0XFFFFEBEB);
  Color get redA100 => Color(0XFFF38181);
  Color get redA700 => Color(0XFFEB001B);
  // Yellow
  Color get yellow800 => Color(0XFFF1B11C);
  Color get yellow80001 => Color(0XFFF79E1B);
}

class Colorschemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF2E4A8E),
    primaryContainer: Color(0XFFF1F4FE),
    errorContainer: Color(0XFF004260),
    onErrorContainer: Color(0XFFFFFFFF),
    onPrimary: Color(0XFF0B0B0B),
    onPrimaryContainer: Color(0XFF292032),
  );
}
/// class containing custom colors for a lightCode theme.