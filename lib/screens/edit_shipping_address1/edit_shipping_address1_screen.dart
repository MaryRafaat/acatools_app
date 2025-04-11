import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/edit_shipping_address1/edit_shipping_address1_controller.dart'; // ignore_for_file: mi

class EditShippingAddress1Screen
    extends GetWidget<EditShippingAddress1Controller> {
  const EditShippingAddress1Screen({Key? key})
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
                  top: 20.h,
                  right: 12.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
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
                        "msg_shipping_address".tr,
                        style: CustomTextStyles.titleMediumRalewayMedium,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    _buildRowcountryone(),
                    SizedBox(height: 22.h),
                    _buildAddressone(),
                    SizedBox(height: 22.h),
                    _buildcity(),
                    SizedBox(height: 22.h),
                    _buildPostcodeone(),
                    SizedBox(height: 22.h),
                    _buildPhone(),
                    SizedBox(height: 140.h),
                    _buildSavechanges()
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

  /// Section Widget

  Widget _buildRowcountryone() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_country".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 2.h),
                Text(
                  "lbl_egypt".tr,
                  style: CustomTextStyles.titleLargeBlack900Bold,
                )
              ],
            ),
          ),
          CustomIconButton(
            height: 30.h,
            width: 30.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            alignment: Alignment.bottomCenter,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrow,
              ImagePath: '',
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldone() {
    return CustomTextFormField(
      controller: controller.fieldoneController,
      hintText: "lbl_romina".tr,
      hintStyle: CustomTextStyles.bodyLargeRalewayBlack900,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: appTheme.gray50,
    );
  }

  Widget _buildAddressone() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_address".tr,
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
      fillColor: appTheme.gray50,
      hintText: "lbl_banglore".tr,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
    );
  }

  /// Section Widget

  Widget _buildcity() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_town_city".tr,
            style: theme.textTheme.labelLarge,
          ),
          _buildFieldthree()
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildzipcode() {
    return CustomTextFormField(
      controller: controller.zipcodeController,
      hintText: "lbl_188886".tr,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: appTheme.gray50,
    );
  }

  /// Section Widget

  Widget _buildPostcodeone() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_postcode".tr,
            style: theme.textTheme.labelLarge,
          ),
          _buildzipcode()
        ],
      ),
    );
  }

  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl_012".tr,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: appTheme.gray50,
    );
  }

  /// Section Widget

  Widget _buildPhone() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_phone_number".tr,
            style: theme.textTheme.labelLarge,
          ),
          _buildPassword()
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildSavechanges() {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
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
