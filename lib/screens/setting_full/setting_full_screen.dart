import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/setting_full/setting_full_controller.dart';

class SettingsFullScreen extends GetWidget<SettingFullController> {
  const SettingsFullScreen({Key? key})
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
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 16.h,
                  right: 12.h,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_settings".tr,
                          style: theme.textTheme.headlineMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_personal".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildRowtitleThree(
                        titleThree: "lbl_profile".tr,
                      ),
                    ),
                    SizedBox(height: 46.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildRowtitleThree(
                        titleThree: "msg_shipping_address".tr,
                      ),
                    ),
                    SizedBox(height: 46.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildRowtitleThree(
                        titleThree: "lbl_payment_methods2".tr,
                      ),
                    ),
                    SizedBox(height: 56.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_shop".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 28.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildCurrency(
                        titleEight: "lbl_country".tr,
                        price: "lbl_egypt".tr,
                      ),
                    ),
                    SizedBox(height: 38.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildCurrency(
                        titleEight: "lbl_currency".tr,
                        price: "lbl_egp".tr,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "lbl_account".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildCurrency(
                        titleEight: "lbl_language".tr,
                        price: "lbl_english".tr,
                      ),
                    ),
                    SizedBox(height: 32.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildRowtitleThree(
                        titleThree: "lbl_about_aca_tools".tr,
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.h),
                        child: Text(
                          "msg_delete_my_account".tr,
                          style: CustomTextStyles.titleMediumRaleway_2,
                        ),
                      ),
                    ),
                    SizedBox(height: 26.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_aca_tools".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "msg_version_1_0_april".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    )
                  ],
                ),
              ),
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

  Widget _buildRowtitleThree({required String titleThree}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleThree,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
          CustomImageView(
            ImagePath: ImageConstant.imgArrowRightBlack900,
            height: 16.h,
            width: 10.h,
          )
        ],
      ),
    );
  }

  Widget _buildCurrency({
    required String titleEight,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titleEight,
            style: theme.textTheme.titleMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            price,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.black900,
            ),
          ),
          CustomImageView(
            ImagePath: ImageConstant.imgArrowRightBlack900,
            height: 16.h,
            width: 10.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(left: 14.h),
          )
        ],
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
