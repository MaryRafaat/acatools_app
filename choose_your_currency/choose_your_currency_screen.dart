import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitile.dart';
import 'package:acatools_app/widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/widgets/custom_radio_button.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/choose_your_currency/choose_your_currency_controoler.dart';

class ChooseYourCurrencyScreen extends GetWidget<ChooseYourCurrencyController> {
  const ChooseYourCurrencyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: _buildAppbar(),
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 50.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_currency".tr,
                    style: CustomTextStyles.titleMediumRalewayMedium,
                  ),
                ),
                SizedBox(height: 22.h),
                _buildColumndownload()
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

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      height: 50.h,
      title: AppbarSubtitle(
        text: "lbl_settings".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget

  Widget _buildColumndownload() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 8.h,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDownloadRemovebgPreview,
                  height: 16.h,
                  width: 16.h,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(left: 6.h),
                  ImagePath: '',
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_pound".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 22.h,
                  width: 24.h,
                  ImagePath: '',
                )
              ],
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => CustomRadioButton(
                width: 334.h,
                text: "lbl_dolar".tr,
                value: "lbl_dolar".tr,
                groupValue: controller.radioGroup.value,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 8.h,
                ),
                decoration: RadioStyleHelper.fillGray,
                isRightCheck: true,
                onChange: (value) {
                  controller.radioGroup.value = value;
                },
              ),
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
