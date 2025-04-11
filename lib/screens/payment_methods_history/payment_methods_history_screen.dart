import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/payment_methods_history/payment_methods_history_controller.dart';
import 'package:acatools_app/screens/model.dart';

import 'package:acatools_app/widgets/listtitle_item.dart'; // ignore_for_file: must_be_immutabl

class PaymentMethodsHistoryScreen
    extends GetWidget<PaymentMethodsHistoryController> {
  const PaymentMethodsHistoryScreen({Key? key})
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
                    "lbl_payment_methods".tr,
                    style: CustomTextStyles.titleMediumRalewayMedium,
                  ),
                ),
                SizedBox(height: 28.h),
                _buildRowtitletwo(),
                SizedBox(height: 16.h),
                _buildListtitle(),
                SizedBox(height: 24.h)
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

  Widget _buildRowtitletwo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
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
                          imagePath: ImageConstant.imgMastercard,
                          height: 34.h,
                          width: 58.h,
                          ImagePath: '',
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseIndigo50,
                          height: 34.h,
                          width: 36.h,
                          ImagePath: '',
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
                  imagePath: ImageConstant.imgGroup1353,
                  height: 10.h,
                  width: 12.h,
                  ImagePath: '',
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildListtitle() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 6.h),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 4.h,
            );
          },
          itemCount: controller.paymentMethodsHistoryModelObj.value
              .listtitleItemList.value.length,
          itemBuilder: (context, index) {
            ListtitleItemModel model = controller.paymentMethodsHistoryModelObj
                .value.listtitleItemList.value[index];

            return ListtitleItemWidget(
              model,
            );
          },
        ),
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
