import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable

class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber(
      {Key? key,
      required this.onTap,
      required this.controller,
      required String hintText,
      required TextStyle hintStyle,
      required OutlineInputBorder borderDecoration,
      required Color fillcolor,
      required EdgeInsets contentPadding,
      required Color fillColor})
      : super(
          key: key,
        );

  TextEditingController? controller;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      decoration: BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(
          26.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            child: Row(
              children: [
                SizedBox(
                  height: 16.h,
                  width: 22.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                CustomImageView(
                  ImagePath: ImageConstant.imgCheckmark,
                  height: 14.h,
                  width: 14.h,
                  margin: EdgeInsets.only(left: 6.h),
                )
              ],
            ),
          ),
          Container(
            height: 22.h,
            width: 1.h,
            margin: EdgeInsets.only(left: 14.h),
            decoration: BoxDecoration(
              color: appTheme.gray90001,
            ),
          ),
          Expanded(
            child: Container(
              width: 216.h,
              margin: EdgeInsets.only(left: 14.h),
              child: TextFormField(
                focusNode: FocusNode(),
                autofocus: true,
                controller: controller,
                style: CustomTextStyles.titleSmallPoppinsBluegray100,
                decoration: InputDecoration(
                  hintText: "lbl_your_number".tr,
                  hintStyle: CustomTextStyles.titleSmallPoppinsBluegray100,
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.h,
                    vertical: 14.h,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
