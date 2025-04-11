import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import 'package:acatools_app/screens/product_variation/product_variation_controller.dart';

import 'package:acatools_app/screens/model.dart';

// ignore_for_file: must_be_immutable

class ListfgrxmgjlItemWidget extends StatelessWidget {
  ListfgrxmgjlItemWidget(this.listfgrxmgjlItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListfgrxmgjlItemModel listfgrxmgjlItemModelobj;

  var controller = Get.find<ProductVariationController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32.h,
      child: Obx(
        () => CustomImageView(
          ImagePath: listfgrxmgjlItemModelobj.fgrxmgjl!.value,
          height: 66.h,
          width: 32.h,
          margin: EdgeInsets.only(top: 2.h),
        ),
      ),
    );
  }
}
