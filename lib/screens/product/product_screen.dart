import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

import '../../widgets/custom_icon_button.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/product/product_controller.dart'; // ignore_for_file: must_be_immutabl

class ProductScreen extends GetWidget<ProductController> {
  const ProductScreen({Key? key})
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
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          SizedBox(height: 42.h),
                          CustomImageView(
                            imagePath: ImageConstant.img71fg5rxmgjl2,
                            height: 290.h,
                            width: 140.h,
                            ImagePath: '"E:\app\photo\51ZVhHS-NNL.jpg"',
                          ),
                          SizedBox(height: 42.h),
                          SizedBox(
                            height: 10.h,
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 5,
                              effect: ScrollingDotsEffect(
                                spacing: 10,
                                activeDotColor: appTheme.blueA70001,
                                dotColor: appTheme.blueA70001.withOpacity(0.2),
                                dotHeight: 10.h,
                                dotWidth: 10.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 28.h),
                          _buildRowprice(),
                          SizedBox(height: 14.h),
                          SizedBox(
                            width: 332.h,
                            child: Text(
                              "msg_casio_fx_991esplus_2wdtv".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.33,
                              ),
                            ),
                          ),
                          SizedBox(height: 122.h),
                          _buildBottombar()
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h)
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottombar1(),
      ),
    );
  }

  /// Section Widget

  Widget _buildRowprice() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_17_00".tr,
            style: CustomTextStyles.headlineMediumBlack900,
          ),
          CustomIconButton(
            height: 30.h,
            width: 30.h,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.fillRed,
            child: CustomImageView(
              imagePath: ImageConstant.imgUserGray500,
              ImagePath:
                  '"E:\app\photo\84efb32f_562c_41e2_a593_5b2a3718136d_bac5.webp"',
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildBottombar() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.h,
      ),
      decoration: AppDecoration.outlineBlack9002,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.h,
                  width: 46.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFavoriteGray900,
                    ImagePath: '"E:\app\photo\71FG5RXMGJL.jpg"',
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_add_to_cart".tr,
                    buttonStyle: CustomButtonStyles.fillGray900,
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_buy_now".tr,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 136.h,
            child: Divider(),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildBottombar1() {
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
