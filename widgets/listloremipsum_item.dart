import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class ListloremipsumItemWidget extends StatelessWidget {
  ListloremipsumItemWidget(this.listloremipsumItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListloremipsumItemModel listloremipsumItemModelobj;

  var controller = Get.find<WishlistController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: theme.colorScheme.onErrorContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Container(
              height: 108.h,
              width: 128.h,
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: listloremipsumItemModelobj.image!.value,
                      height: 34.h,
                      width: 36.h,
                      ImagePath: '',
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: listloremipsumItemModelobj.imageOne!.value,
                      height: 70.h,
                      width: 110.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 8.h),
                      ImagePath: '',
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 154.h,
                  child: Obx(
                    () => Text(
                      listloremipsumItemModelobj.loremipsum!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.33,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Obx(
                  () => Text(
                    listloremipsumItemModelobj.price!.value,
                    style: CustomTextStyles.titleMediumRalewayGray900Bold19,
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 2.h,
                              ),
                              decoration: AppDecoration.fillIndigo.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Obx(
                                () => Text(
                                  listloremipsumItemModelobj.color!.value,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 6.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.h,
                                vertical: 2.h,
                              ),
                              decoration: AppDecoration.fillIndigo.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Obx(
                                () => Text(
                                  listloremipsumItemModelobj.size!.value,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath: listloremipsumItemModelobj.imageTwo!.value,
                          height: 24.h,
                          width: 28.h,
                          ImagePath: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
