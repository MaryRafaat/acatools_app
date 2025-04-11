import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/payment/payment_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable

class ListtitleItemWidget extends StatelessWidget {
  ListtitleItemWidget(this.listtitleItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListtitleItemModel listtitleItemModelobj;

  var controller = Get.find<PaymentController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 52.h,
          width: 66.h,
          decoration: AppDecoration.stack23,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 20.h,
                  width: 24.h,
                  margin: EdgeInsets.only(top: 4.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        ImagePath: ImageConstant.imgContrast,
                        height: 20.h,
                        width: 22.h,
                      ),
                      Obx(
                        () => Text(
                          listtitleItemModelobj.title!.value,
                          style: CustomTextStyles.labelLargeRalewayBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  ImagePath: listtitleItemModelobj.imageOne!.value,
                  height: 40.h,
                  width: 28.h,
                  margin: EdgeInsets.only(left: 16.h),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 172.h,
          margin: EdgeInsets.only(left: 8.h),
          child: Obx(
            () => Text(
              listtitleItemModelobj.loremipsum!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
        ),
        Spacer(),
        Obx(
          () => Text(
            listtitleItemModelobj.price!.value,
            style: CustomTextStyles.titleMediumRalewayGray900Bold19,
          ),
        )
      ],
    );
  }
}
