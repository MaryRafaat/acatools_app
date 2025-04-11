import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_text_form_field.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/setting_add_card_pop_up/setting_add_card_pop_up_controller.dart';
import 'dart:ui';

class SettingsAddCardPopUpScreen
    extends GetWidget<SettingAddCardPopUpController> {
  const SettingsAddCardPopUpScreen({Key? key})
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
            height: 684.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildColumntitle(),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaY: 9,
                      sigmaX: 9,
                    ),
                    child: Container(
                      width: double.maxFinite,
                      decoration: AppDecoration.outline,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Spacer(),
                          Container(
                            width: double.maxFinite,
                            decoration:
                                AppDecoration.fill0nErrorContainer.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL8,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildHeader(),
                                SizedBox(height: 18.h),
                                _buildCardholderone(),
                                SizedBox(height: 18.h),
                                _buildCardnumberone(),
                                SizedBox(height: 18.h),
                                _buildRowvalidtwo(),
                                SizedBox(height: 18.h),
                                _buildSavechanges(),
                                SizedBox(height: 20.h)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
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

  Widget _buildColumntitle() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 30.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_settings".tr,
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 6.h),
            Text(
              "lbl_payment_methods".tr,
              style: CustomTextStyles.titleMediumRalewayMedium,
            ),
            SizedBox(height: 28.h),
            SizedBox(
              width: double.maxFinite,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 154.h,
                      width: 280.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 154.h,
                    width: 44.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 20.h,
                    ),
                    padding: EdgeInsets.only(top: 68.h),
                    decoration: AppDecoration.fillBlueA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          ImagePath: ImageConstant.imgGroup1353,
                          height: 10.h,
                          width: 12.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 20.h,
        top: 26.h,
        bottom: 26.h,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_add_card".tr,
            style: CustomTextStyles.titleLargeBlack900Bold22,
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldone() {
    return CustomTextFormField(
      controller: controller.fieldoneController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumRalewayIndigo200,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),

      fillColor: theme.colorScheme.background, // Add the required fillColor
    );
  }

  Widget _buildCardholderone() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_card_holder".tr,
            style: theme.textTheme.labelLarge,
          ),
          _buildFieldone()
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldthree() {
    return CustomTextFormField(
      controller: controller.fieldthreeController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumRalewayIndigo200,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: theme.colorScheme.background,
    );
  }

  /// Section Widget

  Widget _buildCardnumberone() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_card_number".tr,
            style: theme.textTheme.labelLarge,
          ),
          _buildFieldthree()
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldfive() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: controller.fieldfiveController,
        hintText: "lbl_required".tr,
        hintStyle: CustomTextStyles.titleMediumRalewayIndigo200,
        contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),

        fillColor: theme.colorScheme.background, // Added the required fillColor
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldseven() {
    return CustomTextFormField(
      controller: controller.fieldsevenController,
      hintText: "lbl_required".tr,
      hintStyle: CustomTextStyles.titleMediumRalewayIndigo200,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: theme.colorScheme.background,
    );
  }

  /// Section Widget

  Widget _buildRowvalidtwo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_valid".tr,
                  style: theme.textTheme.labelLarge,
                ),
                _buildFieldfive()
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_cvv".tr,
                  style: theme.textTheme.labelLarge,
                ),
                _buildFieldseven()
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildSavechanges() {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
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
