import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension RadioStyleHelper on CustomRadioButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
        borderRadius: BorderRadius.circular(8.h),
      );
}

// ignore_for_file: must_be_immutable

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {Key? key,
      required this.onChange,
      this.decoration,
      this.alignment,
      this.isRightChek,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.padding,
      this.textstyle,
      this.overflow,
      this.textAlignment,
      this.gradient,
      this.backgroundColor,
      this.isExpandedText = false,
      required bool isRightCheck})
      : super(
          key: key,
        );

  final BoxDecoration? decoration;
  final Alignment? alignment;
  final bool? isRightChek;
  final double? iconSize;
  String? value;
  final String? groupValue;
  final Function(String) onChange;
  final String? text;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textstyle;
  final TextOverflow? overflow;
  final TextAlign? textAlignment;
  final Gradient? gradient;
  final Color? backgroundColor;
  final bool isExpandedText;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildRadioButtonWidget)
        : buildRadioButtonWidget;
  }

  bool get isGradient => gradient != null;

  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);

  Widget get buildRadioButtonWidget => GestureDetector(
        onTap: () {
          onChange(value!);
        },
        child: Container(
          decoration: decoration,
          width: width,
          padding: padding,
          child: (isRightChek ?? false)
              ? rightSideRadioButton
              : leftSideRadioButton,
        ),
      );

  Widget get leftSideRadioButton => Row(
        children: [
          radioButtonWidget,
          SizedBox(
            width: text != null && text!.isNotEmpty ? 8 : 0,
          ),
          isExpandedText ? Expanded(child: textwidget) : textwidget
        ],
      );

  Widget get rightSideRadioButton => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isExpandedText ? Expanded(child: textwidget) : textwidget,
          SizedBox(
            width: text != null && text!.isNotEmpty ? 8 : 0,
          ),
          radioButtonWidget
        ],
      );

  Widget get textwidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.start,
        overflow: overflow,
        style: textstyle ?? theme.textTheme.titleMedium,
      );

  Widget get radioButtonWidget => SizedBox(
        height: iconSize,
        width: iconSize,
        child: Radio<String>(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          value: value ?? "",
          groupValue: groupValue,
          onChanged: (value) {
            onChange(value!);
          },
        ),
      );

  BoxDecoration get radioButtonDecoration =>
      BoxDecoration(color: backgroundColor);
}
