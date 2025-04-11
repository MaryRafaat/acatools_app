import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import 'package:acatools_app/screens/setting/setting_controller.dart';

class SettingsScreen extends GetWidget<SettingController> {
  const SettingsScreen({Key? key})
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
                SizedBox(height: 24.h),
                _buildColumntitleone(),
                SizedBox(height: 54.h),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_shop".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 28.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildCurrency(
                    titleEight: "lbl_country".tr,
                    price: "lbl_egypt2".tr,
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildCurrency(
                    titleEight: "lbl_currency".tr,
                    price: "lbl_egp2".tr,
                  ),
                ),
                SizedBox(height: 40.h),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildCurrency(
                    titleEight: "lbl_sizes".tr,
                    price: "lbl_uk".tr,
                  ),
                ),
                SizedBox(height: 40.h),
                _buildTerms()
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildColumntitleone() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_personal".tr,
            style: theme.textTheme.titleLarge,
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
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildTerms() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_terms_and_conditions".tr,
            style: theme.textTheme.titleMedium,
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

  /// Common widget

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
            margin: EdgeInsets.only(left: 16.h),
          )
        ],
      ),
    );
  }

  /// Common widget

  Widget _buildRowtitleThree({required String titleThree}) {
    return Row(
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
    );
  }
}
