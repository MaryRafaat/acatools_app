import 'package:acatools_app/screens/model.dart';

import 'package:acatools_app/screens/wishlist_page/wishlist_controller.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../widgets/custom_icon_button.dart';

class RecentlyviewItemWidget extends StatelessWidget {
  RecentlyviewItemWidget(this.recentlyviewItemModelobj, {Key? key})
      : super(
          key: key,
        );

  RecentlyviewItemModel recentlyviewItemModelobj;
  var controller = Get.find<WishlistController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomIconButton(
        height: 60.h,
        width: 60.h,
        padding: EdgeInsets.all(8.h),
        decoration: IconButtonStyleHelper.none,
        child: CustomImageView(
          imagePath: recentlyviewItemModelobj.group!.value,
          ImagePath: '',
        ),
      ),
    );
  }
}
