import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/screens/your_card_been_charged_dialog/your_card_been_charged_controller.dart';

class YourCardBeenChargedDialog extends StatelessWidget {
  YourCardBeenChargedDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  YourCardBeenChargedController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.h),
          decoration: AppDecoration.fill0nErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 32.h),
              Text(
                "lbl_done2".tr,
                style: CustomTextStyles.titleMediumRalewayGray900Bold19,
              ),
              SizedBox(height: 4.h),
              Text(
                "msg_you_card_has_been".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 20.h),
              CustomElevatedButton(
                width: 162.h,
                text: "lbl_track_my_order".tr,
                buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
              )
            ],
          ),
        )
      ],
    );
  }
}
