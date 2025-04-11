import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitile.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/payment/payment_controller.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/widgets/listtitle_item.dart'; // ignore_for_file: must_be_immutable

class PaymentScreen extends GetWidget<PaymentController> {
  const PaymentScreen({Key? key})
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
                    _buildColumn(),
                    SizedBox(height: 16.h),
                    _buildItems(),
                    SizedBox(height: 36.h),
                    _buildshippingone(),
                    SizedBox(height: 14.h),
                    _buildPaymentmethod(),
                    SizedBox(height: 10.h),
                    _buildTotal(),
                    SizedBox(height: 50.h)
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

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      height: 50.h,
      title: AppbarSubtitle(
        text: "lbl_payment".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget

  Widget _buildColumn() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 8.h,
                  ),
                  decoration: AppDecoration.backgroundGrey.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            bottom: 12.h,
                          ),
                          child: _buildColumntitleTwo(
                            titleTwo: "msg_shipping_address".tr,
                            p84932000000am: "msg_badr_unvirsty_in".tr,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 30.h,
                        width: 30.h,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.bottomCenter,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          ImagePath: '"E:\app\photo\51ZVhHS-NNL.jpg"',
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Container(
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
                          child: _buildColumntitleTwo(
                            titleTwo: "msg_contact_information".tr,
                            p84932000000am: "msg_84932000000_am".tr,
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 30.h,
                        width: 30.h,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.bottomCenter,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgEdit,
                          ImagePath:
                              '"E:\app\photo\51tV0iPY4HL._AC_UF894,1000_QL80_.jpg"',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItems() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 2.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_items".tr,
                            style: CustomTextStyles.titleLargeBlack900,
                          ),
                        ),
                        Container(
                          height: 28.h,
                          width: 30.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse149Indigo50,
                                height: 28.h,
                                width: double.maxFinite,
                                radius: BorderRadius.circular(
                                  14.0.h,
                                ),
                                ImagePath: '"E:\app\photo\71FG5RXMGJL.jpg"',
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles.titleMediumRaleway_1,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                CustomOutlinedButton(
                  height: 22.h,
                  width: 120.h,
                  text: "lbl_add_voucher".tr,
                  margin: EdgeInsets.only(top: 2.h),
                  buttonTextStyle: CustomTextStyles.bodyMediumBlueA70002,
                )
              ],
            ),
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 14.h,
                  );
                },
                itemCount: controller
                    .paymentModelObj.value.listtitleItemList.value.length,
                itemBuilder: (context, index) {
                  ListtitleItemModel model = controller
                      .paymentModelObj.value.listtitleItemList.value[index];
                  return ListtitleItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildshippingone() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_shipping_options".tr,
            style: CustomTextStyles.titleLargeBlack900,
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 6.h,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkErrorcontainer,
                  height: 22.h,
                  width: 24.h,
                  ImagePath:
                      '"E:\app\photo\51-603uXOjL._AC_UF1000,1000_QL80_.jpg"',
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "lbl_standard".tr,
                      style: CustomTextStyles.titleMediumRaleway_1,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 2.h,
                  ),
                  decoration: AppDecoration.fillGray5002.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_1_2_days".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeRalewayBlueA700,
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: Text(
                      "lbl_free".tr,
                      style: CustomTextStyles.titleMediumRalewayBold17,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "msg_delivered_on_or".tr,
            style: theme.textTheme.bodySmall,
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildPaymentmethod() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_payment_method".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.h),
                  child: CustomIconButton(
                    height: 30.h,
                    width: 30.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillBlueATL14,
                    child: CustomImageView(
                      ImagePath: ImageConstant.imgEdit,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h),
          CustomElevatedButton(
            height: 30.h,
            width: 72.h,
            text: "lbl_card".tr,
            buttonStyle: CustomButtonStyles.fillIndigoTL14,
            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildTotal() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: AppDecoration.backgroundGrey,
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Text(
                "lbl_total".tr,
                style: CustomTextStyles.titleLargeBlack900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_34_00".tr,
              style: CustomTextStyles.titleMediumRalewayGray900Bold19,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            width: 128.h,
            text: "lbl_pay".tr,
            margin: EdgeInsets.only(right: 4.h),
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

  Widget _buildColumntitleTwo({
    required String titleTwo,
    required String p84932000000am,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTwo,
          style: CustomTextStyles.titleSmallGray900Bold.copyWith(
            color: appTheme.gray900,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          p84932000000am,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.bodySmall10.copyWith(
            color: appTheme.black900,
            height: 1.50,
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
