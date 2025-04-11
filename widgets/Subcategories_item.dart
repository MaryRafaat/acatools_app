import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/shop_clothing/shop_clothing_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable

class SubcategoiesItemWidget extends StatelessWidget {
  SubcategoiesItemWidget(this.subcategoiesItemModelObj, {Key? key})
      : super(
          key: key,
        );

  SubcategoiesItemModel subcategoiesItemModelObj;

  var controller = Get.find<ShopClothingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: double.maxFinite,
            padding: EdgeInsets.only(bottom: 6.h),
            decoration: AppDecoration.outlineBlack9002.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder30,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: subcategoiesItemModelObj.essentialsone!.value,
                    height: 40.h,
                    width: 42.h,
                    ImagePath: '',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          Obx(
            () => Text(
              subcategoiesItemModelObj.title!.value,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeRalewayGray900,
            ),
          )
        ],
      ),
    );
  }
}
