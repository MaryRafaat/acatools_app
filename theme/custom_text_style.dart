import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,

/// categorized by different font families and weights.

/// Additionally, this class includes extensions on [TextStyle] to easily apply s

class CustomTextStyles {
// Body text style

  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 19.fsize,
      );

  static TextStyle get bodyLargeBlack900_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get bodyLargeOnErrorContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static const TextStyle titleMediumRalewayGray900 = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xFF212121), // Replace with the desired color
  );

  static TextStyle get bodyLargeOnPrimary =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get bodyLargeRalewayBlack900 =>
      theme.textTheme.bodyLarge!.raleway.copyWith(
        color: appTheme.black900,
        fontSize: 17.fsize,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodyMediumBlueA70002 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA70002,
        fontSize: 13.fsize,
      );

  static TextStyle get bodyMediumGray900 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.9),
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodyMediumOnErrorContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodyMediumOnErrorContainerLight =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fsize,
      );

  static TextStyle get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fsize,
      );

// Headline text style

  static TextStyle get headlineMediumBlack900 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 26.fsize,
        fontWeight: FontWeight.w800,
      );

  static TextStyle get headlineMediumIndigo900 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.indigo900,
        fontSize: 29.fsize,
        fontWeight: FontWeight.w500,
      );
  static const TextStyle titleMediumRalewayBold17 = TextStyle(
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
    color: Colors.black, // Replace with your desired color
    fontFamily:
        'Raleway', // Ensure the font family is correctly set up in your project
  );

  static TextStyle get headlineMediumOnErrorContainer =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 29.fsize,
      );

// Label text style

  static TextStyle get labelLargeGray900 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fsize,
      );

  static TextStyle get labelLargeGray90012 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fsize,
      );

  static TextStyle get labelLargeRaleway =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        fontSize: 12.fsize,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelLargeRalewayBlueA700 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.blueA700,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelLargeRalewayBold =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle get labelLargeRalewayGray900 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelLargeRalewayRed300 =>
      theme.textTheme.labelLarge!.raleway.copyWith(
        color: appTheme.red300,
      );

  static TextStyle get labelMediumGray900 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
      );

// Title text style

  static TextStyle get titleLargeBlack900 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get titleLargeBlack900Bold =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleLargeBlack900Bold22 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 22.fsize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumRalewayGray900Bold19 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray900,
        fontSize: 19.fsize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumRalewayGray900Medium =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fsize,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumRalewayIndigo200 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.indigo200,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumRalewayMedium =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumRalewayMedium17 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        fontSize: 17.fsize,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumRalewayOnErrorContainer =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumRalewayRed200 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.red200,
        fontSize: 17.fsize,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumRalewayRed300 =>
      theme.textTheme.titleMedium!.raleway.copyWith(
        color: appTheme.red300,
        fontSize: 17.fsize,
        fontWeight: FontWeight.w700,
      );

  static get titleMediumRaleway_1 => theme.textTheme.titleMedium!.raleway;

  static get titleMediumRaleway_2 => theme.textTheme.titleMedium!.raleway;

  static TextStyle get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fsize,
      );

  static TextStyle get titleSmallGray900 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );

  static TextStyle get titleSmallGray900Bold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titlesmallGray900Bold15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fsize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallPoppinsBluegray100 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray100,
      );

  static TextStyle get titleSmallPoppinsGray300 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray300,
      );

  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fsize,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleSmallRed200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.red200,
        fontWeight: FontWeight.w700,
      );
}
