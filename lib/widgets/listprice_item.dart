import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/payment_methods_history/payment_methods_history_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
// ignore_for_file: must_be_immutable

class ListpriceItemWidget extends StatelessWidget {
  ListpriceItemWidget(this.listpriceItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListpriceItemModel listpriceItemModelobj;

  var controller = Get.find<PaymentMethodsHistoryController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 8.h,
            ),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  ImagePath: ImageConstant.imgBagPrimary,
                  height: 18.h,
                  width: 18.h,
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              listpriceItemModelobj.title!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Obx(
                            () => Text(
                              listpriceItemModelobj.titleone!.value,
                              style: CustomTextStyles.titleSmallGray900Bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.h),
                Obx(
                  () => Text(
                    listpriceItemModelobj.price!.value,
                    style: CustomTextStyles.titleMediumRalewayBold17,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 8.h,
            ),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => CustomImageView(
                    ImagePath: listpriceItemModelobj.imageOne!.value,
                    height: 18.h,
                    width: 18.h,
                    margin: EdgeInsets.only(top: 6.h),
                  ),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              listpriceItemModelobj.titleTwo!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Obx(
                            () => Text(
                              listpriceItemModelobj.titleThree!.value,
                              style: CustomTextStyles.titleSmallGray900Bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.h),
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      listpriceItemModelobj.priceOne!.value,
                      style: CustomTextStyles.titleMediumRalewayRed300,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 8.h,
            ),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  ImagePath: ImageConstant.imgBagPrimary,
                  height: 18.h,
                  width: 18.h,
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              listpriceItemModelobj.titleFour!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Obx(
                            () => Text(
                              listpriceItemModelobj.titleFive!.value,
                              style: CustomTextStyles.titleSmallGray900Bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.h),
                Obx(
                  () => Text(
                    listpriceItemModelobj.priceTwo!.value,
                    style: CustomTextStyles.titleMediumRalewayBold17,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
