import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/shop_clothing/shop_clothing_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable

class GridloremipsumItemWidget extends StatelessWidget {
  GridloremipsumItemWidget(this.gridloremipsumItemModelobj, {Key? key})
      : super(
          key: key,
        );

  GridloremipsumItemModel gridloremipsumItemModelobj;

  var controller = Get.find<ShopClothingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Obx(
            () => CustomImageView(
              ImagePath: gridloremipsumItemModelobj.image!.value,
              height: 184.h,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 8.h,
                right: 4.h,
              ),
            ),
          ),
          SizedBox(height: 2.h),
          SizedBox(
            width: 138.h,
            child: Obx(
              () => Text(
                gridloremipsumItemModelobj.loremipsum!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.33,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Obx(
            () => Text(
              gridloremipsumItemModelobj.price!.value,
              style: CustomTextStyles.titleMediumRalewayGray900,
            ),
          )
        ],
      ),
    );
  }
}
