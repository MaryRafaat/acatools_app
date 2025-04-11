import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA700,
        borderRadius: BorderRadius.circular(14.h),
      );

  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red50,
        borderRadius: BorderRadius.circular(14.h),
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(10.h),
      );

  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(14.h),
      );

  static BoxDecoration get fillonErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillGrayTL14 => BoxDecoration(
        color: appTheme.gray20001,
        borderRadius: BorderRadius.circular(14.h),
      );

  static BoxDecoration get fillBlueATL14 => BoxDecoration(
        color: appTheme.blueA70002,
        borderRadius: BorderRadius.circular(14.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
        borderRadius: BorderRadius.circular(16.h),
      );

  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 1.h,
        ),
      );

  static BoxDecoration get outlineRed => BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadius.circular(30.h),
        border: Border.all(
          color: appTheme.red300,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(0, 5),
          ),
        ],
      );

  static BoxDecoration get fillGrayTL16 => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(16.h),
      );

  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
                borderRadius: BorderRadius.circular(30.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blueGray40029,
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(0, 5),
                  )
                ],
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
