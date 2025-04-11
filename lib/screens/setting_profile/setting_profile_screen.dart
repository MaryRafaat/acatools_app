import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/setting_profile/setting_profile_controller.dart';

class SettingsProfileScreen extends GetWidget<SettingProfileController> {
  const SettingsProfileScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text(
                  "lbl_settings".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 6.h),
                Text(
                  "lbl_your_profile".tr,
                  style: CustomTextStyles.titleMediumRalewayMedium,
                ),
                SizedBox(height: 18.h),
                CustomImageView(
                  imagePath: ImageConstant.imgProfileImage,
                  height: 104.h,
                  width: 106.h,
                  ImagePath: '"E:\app\photo\th.jpeg"',
                ),
                SizedBox(height: 20.h),
                _buildNameone(),
                SizedBox(height: 10.h),
                _buildEmail(),
                SizedBox(height: 10.h),
                _buildPassword(),
                Spacer(),
                _buildsavechanges()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottombar(),
      ),
    );
  }

  Widget _buildNameone() {
    return CustomTextFormField(
      controller: controller.nameoneController,
      hintText: "lbl_romina".tr,
      hintStyle: CustomTextStyles.bodyLargeRalewayBlack900,
      contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
      fillColor: Colors.transparent,
    );
  }

  /// Section Widget

  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_gmail_example_com".tr,
      hintStyle: CustomTextStyles.titleMediumRalewayMedium17,
      contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
      fillColor: Colors.transparent,
    );
  }

  /// Section Widget

  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl".tr,
      hintStyle: CustomTextStyles.titleMediumRalewayMedium17,
      textInputAction: TextInputAction.done,
      obscureText: true,
      contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
      fillColor: Colors.transparent,
    );
  }

  /// Section Widget

  Widget _buildsavechanges() {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
    );
  }

  /// Section Widget

  Widget _buildBottombar() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
        onchanged: (BottomBarEnum type) {},
      ),
    );
  }

  ///Handling route based on bottom click actions

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Arrowright:
        return AppRoutes.shopInitialPage;

      case BottomBarEnum.Wishlist:
        return AppRoutes.wishlistPage;

      case BottomBarEnum.Television:
        return AppRoutes.settingsFullOnePage;

      case BottomBarEnum.Bag:
        return AppRoutes.cartPage;

      case BottomBarEnum.Lock:
        return AppRoutes.profileVoucherReminderPage;

      default:
        return "/";
    }
  }
}
