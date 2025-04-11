import 'package:acatools_app/screens/about_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
//import '../cart_page/cart_page.dart';

//import '../profile_voucher_reminder_page/profile_voucher_reminder_page.dart';

//import '../settings_full_one_page/settings_full_one_page.dart';

//import '../wishlist_page/wishlist_page.dart';

//import 'controller/about_controller.dart'; // ignore_for_file: must_be_immutable

class AboutScreen extends GetWidget<AboutController> {
  const AboutScreen({Key? key})
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
                  left: 20.h,
                  top: 28.h,
                  right: 20.h,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 54.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgBagBlue200,
                      height: 92.h,
                      width: 82.h,
                      ImagePath:
                          '"E:\app\photo\WhatsApp Image 2024-11-30 at 11.59.10_da597250.jpg"',
                    ),
                    SizedBox(height: 102.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_about_shoppe".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 18.h),
                    Text(
                      "msg_shoppe_shopping".tr,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBlack900_1.copyWith(
                        height: 1.69,
                      ),
                    ),
                    SizedBox(height: 26.h),
                    Text(
                      "msg_if_you_need_help".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBlack900_1.copyWith(
                        height: 1.69,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_hello_mydomain_com".tr,
                        style: CustomTextStyles.titleMediumRalewayGray900,
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
