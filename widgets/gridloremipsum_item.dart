import 'package:acatools_app/screens/flash_sale/flash_sale_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

// ignore_for_file: must_be_immutable

class GridloremipsumItemWidget extends StatelessWidget {
  GridloremipsumItemWidget(this.gridloremipsumItemModelobj, {Key? key})
      : super(
          key: key,
        );

  GridloremipsumItemModel gridloremipsumItemModelobj;

  var controller = Get.find<FlashSaleController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 174.h,
          width: double.maxFinite,
          padding: EdgeInsets.only(bottom: 4.h),
          decoration: AppDecoration.outlineBlack9002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Obx(
                () => CustomImageView(
                  ImagePath: gridloremipsumItemModelobj.image!.value,
                  height: 154.h,
                  width: double.maxFinite,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
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
        SizedBox(height: 2.h),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Obx(
                () => Text(
                  gridloremipsumItemModelobj.price!.value,
                  style: CustomTextStyles.titleMediumRalewayGray900,
                ),
              ),
              Obx(
                () => Text(
                  gridloremipsumItemModelobj.priceOne!.value,
                  style: CustomTextStyles.titleSmallRed200.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

 
 //In the above code, we have created a widget named  GridloremipsumItemWidget  that takes a  GridloremipsumItemModel  object as a parameter. We have used the  Obx  widget to update the UI whenever the observable variable changes. 
 //Step 4: Create a controller for the flash sale screen 
 //Create a controller file named  flash_sale_controller.dart  inside the  controller  folder.