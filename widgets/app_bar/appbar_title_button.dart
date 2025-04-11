import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_phone_number.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';

class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({Key? key, this.onTap, this.margin})
      : super(
          key: key,
        );

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: margin ?? EdgeInsets.zero,
        child: GestureDetector(
          onTap: () {
            onTap?.call();
          },
          child: SizedBox(
              width: double.maxFinite,
              child: CustomElevatedButton(
                height: 34.h,
                text: "lbl_my_activity".tr,
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle:
                    CustomTextStyles.titleMediumRalewayOnErrorContainer,
              )),
        ));
  }
}
