import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/widgets/custom_radio_button.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/choose_your_language/choose_your_language_controller.dart';

class ChooseYourLanguageScreen extends GetWidget<ChooseYourLanguageController> {
  const ChooseYourLanguageScreen({Key? key})
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
          child: Container(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 30.h,
              right: 12.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_settings".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_language".tr,
                    style: CustomTextStyles.titleMediumRalewayMedium,
                  ),
                ),
                SizedBox(height: 22.h),
                _buildLanguage()
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

  /// Section Widget

  Widget _buildLanguage() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Obx(
        () => Column(
          children: [
            CustomRadioButton(
              width: 334.h,
              text: "lbl_english".tr,
              value: "lbl_english".tr,
              groupValue: controller.language.value,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.h,
              ),
              decoration: RadioStyleHelper.fillIndigo,
              isRightCheck: true,
              onChange: (value) {
                controller.language.value = value;
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: CustomRadioButton(
                width: 334.h,
                text: "lbl_arabic".tr,
                value: "lbl_arabic".tr,
                groupValue: controller.language.value,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 8.h,
                ),
                decoration: RadioStyleHelper.fillGray,
                isRightCheck: true,
                onChange: (value) {
                  controller.language.value = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: CustomRadioButton(
                width: 334.h,
                text: "lbl_fran_ais".tr,
                value: "lbl_fran_ais".tr,
                groupValue: controller.language.value,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 8.h,
                ),
                decoration: RadioStyleHelper.fillGray,
                isRightCheck: true,
                onChange: (value) {
                  controller.language.value = value;
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildBottombar() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onchanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
        onChanged: (BottomBarEnum type) {},
      ),
    );
  }

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
