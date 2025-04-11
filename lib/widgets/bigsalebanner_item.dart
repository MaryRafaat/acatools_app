import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'package:acatools_app/screens/shop/shop_controller.dart';

// ignore_for_file: must_be_immutable

class BigsalebannerItemwidget extends StatelessWidget {
  BigsalebannerItemwidget(this.bigsalebannerItemModelobj, {Key? key})
      : super(
          key: key,
        );

  BigsalebannerItemModel bigsalebannerItemModelobj;

  var controller = Get.find<ShopController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            ImagePath: ImageConstant.imgDb257e4f2bda4,
            height: 130.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          Container(
            height: 130.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  ImagePath: ImageConstant.imgBubble01,
                  height: 64.h,
                  width: 130.h,
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 130.h,
                    width: 82.h,
                    decoration: AppDecoration.stack6,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          ImagePath: ImageConstant.imgUser,
                          height: 74.h,
                          width: 70.h,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 130.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        ImagePath: ImageConstant.imgA9939394ef52e0b,
                        height: 130.h,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 18.h,
                            top: 12.h,
                          ),
                          child: Obx(
                            () => Text(
                              bigsalebannerItemModelobj.title!.value,
                              style: CustomTextStyles
                                  .headlineMediumOnErrorContainer,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
