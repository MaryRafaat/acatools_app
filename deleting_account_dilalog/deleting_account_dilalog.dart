import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/screens/deleting_account_dilalog/deleting_account_controller.dart';

class DeletingAccountDialog extends StatelessWidget {
  DeletingAccountDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  DeletingAccountController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 36.h,
            vertical: 24.h,
          ),
          decoration: AppDecoration.fill0nErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 34.h),
              Text(
                "msg_you_are_going_to".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style:
                    CustomTextStyles.titleMediumRalewayGray900Bold19.copyWith(
                  height: 1.42,
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                "msg_you_won_t_be_able".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_cancel".tr,
                        buttonStyle: CustomButtonStyles.fillGray900,
                      ),
                    ),
                    SizedBox(width: 16.h),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_delete".tr,
                        buttonStyle: CustomButtonStyles.fillRed,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
