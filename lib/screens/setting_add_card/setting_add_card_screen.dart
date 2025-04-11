import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/setting_add_card/setting_add_card_controller.dart'; // ignore_for_file: must_be

class SettingsAddCardScreen extends GetWidget<SettingAddCardController> {
  const SettingsAddCardScreen({Key? key})
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
              left: 20.h,
              top: 30.h,
              right: 20.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                _buildRowtitletwo()
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

  Widget _buildRowtitletwo() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 14.h,
                    ),
                    decoration: AppDecoration.fillPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                ImagePath: ImageConstant.imgMastercard,
                                height: 34.h,
                                width: 58.h,
                              ),
                              CustomImageView(
                                ImagePath: ImageConstant.imgCloseIndigo50,
                                height: 34.h,
                                width: 36.h,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 32.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildRowtitleThree(
                            titleThree: "msg".tr,
                            titleFour: "lbl_1579".tr,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildRowtitleThree(
                            titleThree: "lbl_amanda_morgan".tr,
                            titleFour: "lbl_12_22".tr,
                          ),
                        ),
                        SizedBox(height: 18.h)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10.h),
          Container(
            height: 154.h,
            width: 44.h,
            padding: EdgeInsets.only(top: 68.h),
            decoration: AppDecoration.fillPrimary.copyWith(
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

  /// Common widget

  Widget _buildRowtitleThree({
    required String titleThree,
    required String titleFour,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleThree,
          style: CustomTextStyles.labelMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          titleFour,
          style: CustomTextStyles.labelMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        )
      ],
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
