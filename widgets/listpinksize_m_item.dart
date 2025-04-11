import 'package:acatools_app/screens/cart_page/cart_controller.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '.../../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable

class ListpinksizeMItem extends StatelessWidget {
  ListpinksizeMItem(this.listpinksizeMItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListpinksizeMItemModel listpinksizeMItemModelobj;

  var controller = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 108.h,
          width: 128.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 100.h,
                padding: EdgeInsets.only(right: 18.h),
                decoration: AppDecoration.outlineBlack9002.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Obx(
                      () => CustomImageView(
                        ImagePath: listpinksizeMItemModelobj.image!.value,
                        height: 98.h,
                        width: 76.h,
                      ),
                    )
                  ],
                ),
              ),
              Obx(
                () => CustomImageView(
                  ImagePath: listpinksizeMItemModelobj.pinksizeMOne!.value,
                  height: 34.h,
                  width: 36.h,
                  alignment: Alignment.bottomLeft,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 172.h,
                child: Obx(
                  () => Text(
                    listpinksizeMItemModelobj.loremipsum!.value,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 6.h),
              Obx(
                () => Text(
                  listpinksizeMItemModelobj.title!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Obx(
                      () => Text(
                        listpinksizeMItemModelobj.price!.value,
                        style: CustomTextStyles.titleMediumRalewayGray900Bold19,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller
                                  .decrementQuantity(listpinksizeMItemModelobj);
                            },
                            child: SizedBox(
                              height: 28.h,
                              width: 30.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    ImagePath: ImageConstant.imgUserBlueA70002,
                                    height: 28.h,
                                    width: 30.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          _buildQuantityone(),
                          GestureDetector(
                            onTap: () {
                              controller
                                  .incrementQuantity(listpinksizeMItemModelobj);
                            },
                            child: Container(
                              height: 28.h,
                              width: 30.h,
                              margin: EdgeInsets.only(left: 6.h),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    ImagePath: ImageConstant.imgFloatingIcon,
                                    height: 28.h,
                                    width: 30.h,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget

  Widget _buildQuantityone() {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: CustomTextFormField(
        readonly: true,
        width: 36.h,
        controller: listpinksizeMItemModelobj.lblQuantity?.value,
        hintText: "lbl_1".tr,
        contentPadding: EdgeInsets.fromLTRB(16.h, 6.h, 16.h, 2.h),
        borderDecoration: TextFormFieldStyleHelper.fillIndigoTL6,
        fillColor: appTheme.indigo50,
      ),
    );
  }
}
