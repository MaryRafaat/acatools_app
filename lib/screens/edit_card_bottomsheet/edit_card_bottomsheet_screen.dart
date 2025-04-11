import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_icon_button.dart';
import 'package:acatools_app/widgets/custom_text_form_field.dart';
import 'package:acatools_app/screens/edit_card_bottomsheet/edit_card_controller.dart';

class EditCardBottomsheet extends StatelessWidget {
  EditCardBottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  EditCardController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fill0nErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildScrollview(), SizedBox(height: 20.h)],
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldone() {
    return CustomTextFormField(
      fillColor: appTheme.gray50,
      controller: controller.fieldoneController,
      hintText: "lbl_romina".tr,
      hintStyle: CustomTextStyles.bodyLargeRalewayBlack900,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
    );
  }

  Widget _buildFieldthree() {
    return CustomTextFormField(
      controller: controller.fieldthreeController,
      hintText: "msg_1579".tr,
      hintStyle: CustomTextStyles.titleSmall15,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: appTheme.gray50,
    );
  }

  /// Section Widget

  Widget _buildFieldfive() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        readonly: true,
        controller: controller.fieldfiveController,
        hintText: "lbl_12_222".tr,
        hintStyle: CustomTextStyles.titleMediumRalewayMedium17,
        contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
        fillColor: appTheme.gray50,
      ),
    );
  }

  /// Section Widget

  Widget _buildFieldseven() {
    return CustomTextFormField(
      controller: controller.fieldsevenController,
      hintText: "lbl_209".tr,
      hintStyle: CustomTextStyles.titleMediumRalewayMedium17,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.fromLTRB(10.h, 8.h, 10.h, 6.h),
      fillColor: appTheme.gray50,
    );
  }

  Widget _buildSavechanges() {
    return CustomElevatedButton(
      text: "lbl_save_changes".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
    );
  }

  /// Section Widget

  Widget _buildScrollview() {
    return SizedBox(
      width: double.maxFinite,
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 22.h,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL8,
                ),
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 4.h),
                        child: Text(
                          "lbl_edit_cade".tr,
                          style: CustomTextStyles.titleLargeBlack900Bold22,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 34.h,
                      width: 34.h,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillGrayTL16,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameRed300,
                        ImagePath: '',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18.h),
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_card_holder".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                    _buildFieldone()
                  ],
                ),
              ),
              SizedBox(height: 18.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 6.h),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_valid".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          _buildFieldfive()
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_cvv".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                          _buildFieldseven()
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18.h),
              _buildSavechanges()
            ],
          ),
        ),
      ),
    );
  }
}
