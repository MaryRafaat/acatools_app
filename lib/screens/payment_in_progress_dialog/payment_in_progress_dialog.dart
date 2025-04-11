import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import 'package:acatools_app/screens/payment_in_progress_dialog/payment_in_progress_controller.dart';

// ignore_for_file: must_be_immutable

class PaymentInProgressDialog extends StatelessWidget {
  PaymentInProgressDialog(this.controller, {Key? key})
      : super(
          key: key,
        );

  PaymentInProgressController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 40.h),
          decoration: AppDecoration.fill0nErrorContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder18,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16.h),
              Text(
                "msg_payment_is_in_progress".tr,
                style: CustomTextStyles.titleLargeBlack900Bold,
              ),
              SizedBox(height: 6.h),
              Text(
                "msg_please_wait_a_few".tr,
                style: theme.textTheme.labelLarge,
              )
            ],
          ),
        )
      ],
    );
  }
}
