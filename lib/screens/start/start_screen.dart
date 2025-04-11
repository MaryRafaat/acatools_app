import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/screens/start/start_controller.dart';

class StartScreen extends GetWidget<StartController> {
  const StartScreen({Key? key})
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
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgwhatsappImage,
                  height: 470.h,
                  width: double.maxFinite,
                  ImagePath:
                      '"E:\app\photo\WhatsApp Image 2024-11-30 at 11.59.10_da597250.jpg"',
                ),
                CustomElevatedButton(
                  height: 60.h,
                  text: "lbl_create_account2".tr,
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle: CustomTextStyles.bodyMediumOnErrorContainer,
                ),
                SizedBox(height: 44.h),
                CustomElevatedButton(
                  height: 60.h,
                  text: "msg_i_already_have_an".tr,
                  margin: EdgeInsets.only(
                    left: 20.h,
                    right: 18.h,
                  ),
                  buttonStyle: CustomButtonStyles.fillPrimary,
                  buttonTextStyle:
                      CustomTextStyles.bodyMediumOnErrorContainerLight,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
