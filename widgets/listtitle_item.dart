import 'package:acatools_app/screens/payment_methods_history/payment_methods_history_controller.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import '../../../core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

// ignore_for_file: must_be_immutable

class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(this.listtitleItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListtitleItemModel listtitleItemModelobj;

  var controller = Get.find<PaymentMethodsHistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.h,
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
                Obx(
                  () => CustomImageView(
                    ImagePath: listtitleItemModelobj.image!.value,
                    height: 34.h,
                    width: 58.h,
                  ),
                ),
                Obx(
                  () => CustomImageView(
                    ImagePath: listtitleItemModelobj.imageOne!.value,
                    height: 34.h,
                    width: 36.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    listtitleItemModelobj.title!.value,
                    style: CustomTextStyles.labelLargeGray90012,
                  ),
                ),
                Obx(
                  () => Text(
                    listtitleItemModelobj.zipcode!.value,
                    style: CustomTextStyles.labelLargeGray900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => Text(
                    listtitleItemModelobj.titleone!.value,
                    style: CustomTextStyles.labelMediumGray900,
                  ),
                ),
                Obx(
                  () => Text(
                    listtitleItemModelobj.titleTwo!.value,
                    style: CustomTextStyles.labelMediumGray900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18.h)
        ],
      ),
    );
  }
}
