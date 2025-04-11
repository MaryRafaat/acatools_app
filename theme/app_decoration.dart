import 'package:acatools_app/core/app_export.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AppDecoration {
// Background decorations

  static BoxDecoration get backgroundGrey => BoxDecoration(
        color: appTheme.gray50,
      );

// Fill decorations

  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA700,
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
      );

  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );

  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
      );

  static BoxDecoration get fill0nErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
      );

  static BoxDecoration get fillonErrorContainer1 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgContent,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );

// Gradient decorations

  static BoxDecoration get gradientOnErrorContainerToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.onErrorContainer, appTheme.redA100],
        ),
      );

  static BoxDecoration get gradientOnErrorContainerToRedA100 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.onErrorContainer, appTheme.redA100],
        ),
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgBubblesGray100,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get gradientOnErrorContainerToRedA1001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.43, 0.38),
          colors: [theme.colorScheme.onErrorContainer, appTheme.redA100],
        ),
      );

  static BoxDecoration get gradientOnErrorContainerToRedA1002 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.48, 0.38),
          colors: [theme.colorScheme.onErrorContainer, appTheme.redA100],
        ),
      );

// Outline decorations

  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.gray200B7,
      );

  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      );

  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray40029,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );

  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 4.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );

// Column decorations

  static BoxDecoration get column1 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgBubbles,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get column12 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgBubblesBlue50207x354,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get column8 => BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgBubblesBlue50,
          ),
          fit: BoxFit.fill,
        ),
      );

// Stack decorations

  static BoxDecoration get stack11 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgBubble02,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack14 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgMobile,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack15 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgMobile,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack16 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgMobile,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack17 => BoxDecoration(
          image: DecorationImage(
        image: fs.Svg(
          ImageConstant.imgMobile,
        ),
        fit: BoxFit.fill,
      ));

  static BoxDecoration get stack23 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgMobile,
          ),
          fit: BoxFit.fill,
        ),
      );
  static BoxDecoration get stack24 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgMobile,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack6 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgBubble02,
          ),
          fit: BoxFit.fill,
        ),
      );

  static BoxDecoration get stack9 => BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgBubble02,
          ),
          fit: BoxFit.fill,
        ),
      );
}

class BorderRadiusStyle {
// Circle borders

  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );

// Custom borders

  static BorderRadius get customBorderTL8 => BorderRadius.vertical(
        top: Radius.circular(8.h),
      );

// Rounded borders

  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );

  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );

  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );

  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );

  static BorderRadius get roundedBorder34 => BorderRadius.circular(
        34.h,
      );

  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );

  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}
