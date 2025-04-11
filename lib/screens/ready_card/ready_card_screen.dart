import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';

import '../../widgets/custom_elevated_button.dart';

import 'package:acatools_app/screens/ready_card/ready_card_controller.dart';

class ReadyCardScreen extends GetWidget<ReadyCardController> {
  const ReadyCardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA100,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 36.h,
              right: 24.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPlaceholder01,
                        height: 338.h,
                        width: double.maxFinite,
                        ImagePath:
                            '"E:\app\photo\WhatsApp Image 2024-11-30 at 11.59.10_da597250.jpg"',
                      ),
                      SizedBox(height: 46.h),
                      Text(
                        "lbl_hello".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      SizedBox(height: 12.h),
                      SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "msg_we_provide_all_the".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyLargeBlack900.copyWith(
                            height: 1.42,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      CustomElevatedButton(
                        height: 50.h,
                        text: "lbl_let_s_start".tr,
                        margin: EdgeInsets.symmetric(horizontal: 62.h),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumRalewayIndigo200,
                      ),
                      SizedBox(height: 44.h)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
