import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/choose_payment_method1/choose_payment_method1_controller.dart';

class ChoosePaymentMethod1CardBottomsheet extends StatelessWidget {
  ChoosePaymentMethod1CardBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  ChoosePaymentMethod1Controller controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fill0nErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 26.h,
              top: 26.h,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_payment_methods".tr,
                  style: CustomTextStyles.titleLargeBlack900Bold22,
                )
              ],
            ),
          ),
          SizedBox(height: 18.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.h),
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
                                ImagePath:
                                    '"E:\app\photo\51-603uXOjL._AC_UF1000,1000_QL80_.jpg"',
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCloseIndigo50,
                                height: 34.h,
                                width: 36.h,
                                ImagePath: '"E:\app\photo\71FG5RXMGJL.jpg"',
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 32.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildRowtitleTwo(
                            titleTwo: "msg".tr,
                            titleThree: "lbl_1579".tr,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: _buildRowtitleTwo(
                            titleTwo: "lbl_amanda_morgan".tr,
                            titleThree: "lbl_12_22".tr,
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
                    borderRadius: BorderRadiusStyle.roundedBorder1,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1353,
                        height: 10.h,
                        width: 12.h,
                        ImagePath: '"E:\app\photo\61KszTZqkkL._AC_UY1000_.jpg"',
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h)
        ],
      ),
    );
  }

  /// Common widget

  Widget _buildRowtitleTwo({
    required String titleTwo,
    required String titleThree,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleTwo,
          style: CustomTextStyles.labelMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          titleThree,
          style: CustomTextStyles.labelMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        )
      ],
    );
  }
}
