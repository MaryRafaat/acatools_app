import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/screens/couldn_t_proceed_payment/couldn_t_proceed_payment_controller.dart';

class CouldnTProceedPaymentDialog extends StatelessWidget {
  CouldnTProceedPaymentDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  CouldnTProceedPaymentController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
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
                "msg_we_couldn_t_proceed".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style:
                    CustomTextStyles.titleMediumRalewayGray900Bold19.copyWith(
                  height: 1.42,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "msg_please_change_your".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 22.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_try_again".tr,
                        buttonStyle: CustomButtonStyles.fillGray900,
                      ),
                    ),
                    SizedBox(width: 16.h),
                    Expanded(
                      child: CustomElevatedButton(
                        text: "lbl_change".tr,
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
