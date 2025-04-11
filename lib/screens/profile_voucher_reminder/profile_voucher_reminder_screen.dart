import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/app_bar/appbar_image.dart';
import 'package:acatools_app/widgets/app_bar/appbar_title_button.dart';
import 'package:acatools_app/widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:acatools_app/widgets/app_bar/appbar_title_button.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_icon_button.dart';
import 'package:acatools_app/widgets/recentlyview_item.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_controller.dart';
// ignore for file: must be_ismutable

class ProfileVoucherReminderPage extends StatelessWidget {
  ProfileVoucherReminderPage({Key? key})
      : super(
          key: key,
        );

  ProfileVoucherReminderController controller = Get.put(
      ProfileVoucherReminderController(ProfileVoucherReminderModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: _buildAppbar(),
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 56.h),
            padding: EdgeInsets.only(
              left: 12.h,
              top: 12.h,
              right: 12.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_hello_amanda".tr,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                _buildReward(),
                SizedBox(height: 20.h),
                _buildColumntitleone(),
                SizedBox(height: 26.h),
                _buildMyorders()
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: Container(
        width: 40.h,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.h,
          bottom: 8.h,
        ),
        decoration: AppDecoration.outlineOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AppbarImage(
                imagePath: ImageConstant.imgPlay,
                height: 40.h,
                width: 40.h,
              ),
            )
          ],
        ),
      ),
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitleButton(
          margin: EdgeInsets.only(left: 16.h),
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIcon,
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.only(left: 12.h),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgEllipse149,
          margin: EdgeInsets.only(
            left: 11.h,
            right: 20.h,
          ),
        )
      ],
    );
  }

  /// Section Widget

  Widget _buildReward() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 6.h,
        right: 12.h,
      ),
      child: Row(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.zero,
            color: theme.colorScheme.onErrorContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder34,
            ),
            child: Container(
              height: 70.h,
              width: 70.h,
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder34,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomIconButton(
                    height: 60.h,
                    width: 60.h,
                    padding: EdgeInsets.all(20.h),
                    decoration: IconButtonStyleHelper.outlineRed,
                    child: CustomImageView(
                      ImagePath: ImageConstant.imgGroup1513,
                    ),
                  ),
                  Container(
                    height: 70.h,
                    width: 70.h,
                    decoration: BoxDecoration(
                      color: appTheme.red300,
                      borderRadius: BorderRadius.circular(
                        34.h,
                      ),
                      border: Border.all(
                        color: appTheme.red300,
                        width: 1.h,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 14.h),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 244.h,
              margin: EdgeInsets.only(bottom: 14.h),
              child: Text(
                "msg_lorem_ipsum_dolor3".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmall11.copyWith(
                  height: 1.45,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildColumntitleone() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recently_viewed".tr,
            style: CustomTextStyles.titleLargeBlack900Bold,
          ),
          SizedBox(height: 10.h),
          Container(
            width: double.maxFinite,
            child: Obx(
              () => SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 8.h,
                  children: List.generate(
                    controller.ProfileVoucherReminderModelObj.value
                        .recentlyviewItemList.value.length,
                    (index) {
                      RecentlyviewItemModel model = controller
                          .ProfileVoucherReminderModelObj
                          .value
                          .recentlyviewItemList
                          .value[index];

                      return RecentlyviewItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMyorders() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_my_orders".tr,
            style: CustomTextStyles.titleLargeBlack900Bold,
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomElevatedButton(
                  height: 34.h,
                  width: 86.h,
                  text: "lbl_to_pay".tr,
                  buttonStyle: CustomButtonStyles.fillIndigoTL14,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumRalewayOnErrorContainer,
                ),
                Expanded(
                  child: Container(
                    height: 36.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 6.h),
                          decoration: AppDecoration.fillIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder18,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_to_recieve".tr,
                                style: CustomTextStyles
                                    .titleMediumRalewayOnErrorContainer,
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 14.h,
                            width: 14.h,
                            decoration: BoxDecoration(
                              color: appTheme.greenA700,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.onErrorContainer,
                                width: 2.h,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    height: 34.h,
                    text: "lbl_to_review".tr,
                    margin: EdgeInsets.only(left: 2.h),
                    buttonStyle: CustomButtonStyles.fillIndigoTL14,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumRalewayOnErrorContainer,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
