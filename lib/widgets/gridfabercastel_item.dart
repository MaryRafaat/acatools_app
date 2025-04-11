import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/shop/shop_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable

class GridfabercastelItemWidget extends StatelessWidget {
  GridfabercastelItemWidget(this.gridfabercastelItemModelobj, {Key? key})
      : super(
          key: key,
        );

  GridfabercastelItemModel gridfabercastelItemModelobj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 4.h),
            decoration: AppDecoration.outlineBlack9002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 80.h,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Obx(
                        () => CustomImageView(
                          ImagePath:
                              gridfabercastelItemModelobj.image1oneOne!.value,
                          height: 74.h,
                          width: 76.h,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          ImagePath:
                              gridfabercastelItemModelobj.fabercastellg!.value,
                          height: 80.h,
                          width: 82.h,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Obx(
                  () => CustomImageView(
                    ImagePath: gridfabercastelItemModelobj.essentialsone!.value,
                    height: 74.h,
                    width: 64.h,
                  ),
                ),
                SizedBox(height: 6.h)
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Obx(
                    () => CustomImageView(
                      ImagePath: gridfabercastelItemModelobj.essentials!.value,
                      height: 72.h,
                      width: 72.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                    ),
                  ),
                  Obx(
                    () => Text(
                      gridfabercastelItemModelobj.title!.value,
                      style: CustomTextStyles.titleMediumRalewayGray900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
