import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitile.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_icon_button.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/cart_empty_shown_form_wishlist/cart_empty_shown_form_wishlist_controller.dart';

class CartEmptyShownFromWishlistScreen
    extends GetWidget<CartEmptyShownFormWishlistController> {
  const CartEmptyShownFromWishlistScreen({Key? key})
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
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildShipping(),
                    SizedBox(height: 60.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgEmptyCart,
                      height: 126.h,
                      width: 136.h,
                      ImagePath: '"E:\app\photo\51ZVhHS-NNL.jpg"',
                    ),
                    SizedBox(height: 78.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "msg_from_your_wishlist".tr,
                          style: CustomTextStyles.titleLargeBlack900Bold22,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.h),
                    _buildStackcolorone()
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

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      height: 50.h,
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "lbl_cart".tr,
            ),
            GestureDetector(
              onTap: () {
                // Handle the tap event here
              },
              child: Container(
                height: 30.h,
                width: 30.h,
                margin: EdgeInsets.only(left: 8.h),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse149,
                      height: 30.h,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(15.0.h),
                      ImagePath: '"E:\app\photo\61KszTZqkkL._AC_UY1000_.jpg"',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 3.h,
                      ),
                      child: Text(
                        "lbl_e".tr,
                        style: CustomTextStyles.titleMediumRaleway_1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShipping() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.backgroundGrey.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_shipping_address".tr,
                    style: CustomTextStyles.titleSmallGray900Bold,
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
                    width: 234.h,
                    child: Text(
                      "msg_26_duong_so_2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        height: 1.50,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: CustomIconButton(
              height: 30.h,
              width: 30.h,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              alignment: Alignment.bottomCenter,
              child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                ImagePath: '"E:\app\photo\61KszTZqkkL._AC_UY1000_.jpg"',
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStackcolorone() {
    return SizedBox(
      height: 254.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100.h,
              width: 130.h,
              margin: EdgeInsets.only(
                left: 20.h,
                bottom: 30.h,
              ),
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 8.h,
              ),
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFloatingIconRed50,
                    height: 28.h,
                    width: 32.h,
                    ImagePath:
                        '"E:\app\photo\514BN3mDxeL._AC_UF350,350_QL80_.jpg"',
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 26.h),
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 2.h,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_pink".tr,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                right: 106.h,
                bottom: 26.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 2.h,
              ),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.h),
                  Text(
                    "lbl_m".tr,
                    style: theme.textTheme.titleSmall,
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCloseBlueA700,
            height: 24.h,
            width: 30.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 18.h,
              bottom: 28.h,
            ),
            ImagePath: '"E:\app\photo\514BN3mDxeL._AC_UF350,350_QL80_.jpg"',
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          color: theme.colorScheme.onErrorContainer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Container(
                            height: 100.h,
                            width: 128.h,
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            decoration: AppDecoration.outlineBlack9002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img51zvhhsNnl1,
                                  height: 90.h,
                                  width: 90.h,
                                  ImagePath:
                                      '"E:\app\photo\41KiUZqTKUL._AC_UF894,1000_QL80_.jpg"',
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 14.h,
                                  width: 16.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 4.h),
                                  ImagePath:
                                      '"E:\app\photo\41oo9nUz5GL._AC_UF350,350_QL80_.jpg"',
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 8.h),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 164.h,
                                child: Text(
                                  "msg_elmaayergy_b0302".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    height: 1.33,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl 17_00".tr,
                                style: CustomTextStyles
                                    .titleMediumRalewayGray900Bold19,
                              ),
                              SizedBox(height: 12.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    CustomElevatedButton(
                                      height: 24.h,
                                      width: 54.h,
                                      text: "lbl_pink".tr,
                                      buttonStyle:
                                          CustomButtonStyles.fillIndigo,
                                      buttonTextStyle:
                                          theme.textTheme.titleSmall!,
                                    ),
                                    CustomElevatedButton(
                                      height: 24.h,
                                      width: 50.h,
                                      text: "lbl_m".tr,
                                      margin: EdgeInsets.only(left: 6.h),
                                      buttonStyle:
                                          CustomButtonStyles.fillIndigo,
                                      buttonTextStyle:
                                          theme.textTheme.titleSmall,
                                    ),
                                    Spacer(),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCloseBlueA700,
                                      height: 24.h,
                                      width: 30.h,
                                      ImagePath: '"E:\app\photo\s-l400.png"',
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
                  SizedBox(height: 16.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 14.h,
                      right: 24.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img61ksztzqkklAcUy1000,
                          height: 70.h,
                          width: 108.h,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 12.h),
                          ImagePath: '"E:\app\photo\wire-3274338_1920.jpg"',
                        ),
                        SizedBox(width: 14.h),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_small_notebook_4_3_x".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  height: 1.33,
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl 17 00".tr,
                                style: CustomTextStyles
                                    .titleMediumRalewayGray900Bold19,
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
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: AppDecoration.backgroundGrey,
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Text(
                        "lbl_total".tr,
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 6.h,
                        left: 6.h,
                      ),
                      child: Text(
                        "lbl_0_00".tr,
                        style: CustomTextStyles.titleMediumRalewayGray900Bold19,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      width: 128.h,
                      text: "lbl_checkout".tr,
                      buttonStyle: CustomButtonStyles.fillonErrorContainer,
                      buttonTextStyle: CustomTextStyles.bodyLargeOnPrimary,
                      alignment: Alignment.center,
                    )
                  ],
                ),
              )
            ],
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
