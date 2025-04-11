import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_phone_number.dart';
import 'package:acatools_app/widgets/custom_text_form_field.dart';
import 'package:acatools_app/screens/creat_account_student/creat_account_student_controller.dart';

class CreateAccountStudentScreen
    extends GetWidget<CreateAccountStudentController> {
  const CreateAccountStudentScreen({super.key}); // Simplified constructor

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context); // Define theme for use in the widget tree

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildColumntitle(theme),
                SizedBox(height: 62.h),
                _buildEmail(),
                SizedBox(height: 6.h),
                _buildId(),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: _buildPhoneNumber(),
                ),
                SizedBox(height: 8.h),
                _buildPassword(),
                SizedBox(height: 24.h),
                _buildDone(),
                SizedBox(height: 24.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_cancel".tr,
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                ),
                SizedBox(height: 130.h),
                _buildHorizontalscrol(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildColumntitle(ThemeData theme) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 18.h,
        top: 74.h,
        bottom: 74.h,
      ),
      decoration: AppDecoration.column1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 6.h),
          Text(
            "lbl_create_account".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.displayMedium!.copyWith(
              height: 1.08,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: CustomTextFormField(
        width: 336.h,
        controller: controller.emailController,
        hintText: "msg_universities_email".tr,
        hintStyle: CustomTextStyles.titleSmallPoppinsBluegray100,
        contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50, // Corrected parameter name
      ),
    );
  }

  /// Section Widget

  Widget _buildId() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: CustomTextFormField(
        width: 336.h,
        controller: controller.idController,
        hintText: "lbl_universities_id".tr,
        contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50, // Corrected parameter name
      ),
    );
  }

  /// Section Widget

  Widget _buildPhoneNumber() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: CustomPhoneNumber(
        controller: controller.phoneNumberController,
        hintText: "msg_phone_number".tr,
        hintStyle: CustomTextStyles.titleSmallPoppinsBluegray100,
        contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50, // Ensure 'C' is capitalized in fillColor
        fillcolor: appTheme.gray50, // Added the required 'fillcolor' parameter
        onTap: () {},
      ),
    );
  }

  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 28.h,
      ),
      child: CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        obscureText: true,
        contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50, // Corrected parameter name
      ),
    );
  }

  /// Section Widget

  Widget _buildDone() {
    return CustomElevatedButton(
      height: 60.h,
      width: 334.h,
      text: "lbl_done".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles
          .titleLargeBlack900Bold, // Replace with the correct getter
    );
  }

  /// Section Widget

  Widget _buildHorizontalscrol() {
    return Padding(
      padding: EdgeInsets.only(left: 150.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 16.h,
            ),
            decoration: AppDecoration.backgroundGrey.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder26,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_universities_id".tr,
                  style: CustomTextStyles.titleSmallPoppinsGray300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
