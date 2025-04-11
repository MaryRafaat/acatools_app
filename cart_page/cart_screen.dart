import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_icon_button.dart';
import 'package:acatools_app/screens/cart_page/cart_controller.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/widgets/listpinksize_m_item.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key})
      : super(
          key: key,
        );

  CartController controller = Get.put(CartController(CartModel().obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 4.h),
                    _buildRowtitlesix(),
                    SizedBox(height: 10.h),
                    _buildShipping(),
                    SizedBox(height: 14.h),
                    _buildListpinksizem(),
                    SizedBox(height: 18.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "msg_from_your_wishlist".tr,
                            style: CustomTextStyles.titleLargeBlack900Bold22,
                          )),
                    ),
                    SizedBox(height: 18.h),
                    _buildstackviewone()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildRowtitlesix() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_cart".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Container(
            height: 30.h,
            width: 30.h,
            margin: EdgeInsets.only(left: 6.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse149,
                  height: 30.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    15.0.h,
                  ),
                  ImagePath: '"E:\app\photo\s-l400.png"',
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_2".tr,
                    style: CustomTextStyles.titleMediumRaleway_1,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildShipping() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.backgroundGrey.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_shipping_address".tr,
                    style: CustomTextStyles.titleSmallGray900Bold,
                  ),
                  SizedBox(height: 6.h),
                  SizedBox(
                    width: 234.h,
                    child: Text(
                      "msg_26_duong_so_2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmall10.copyWith(
                        height: 1.50,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: CustomIconButton(
              height: 30.h,
              width: 30.h,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              alignment: Alignment.bottomCenter,
              child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
                ImagePath: '"E:\app\photo\image2.jpeg"',
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildListpinksizem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Obx(
        () => ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount: controller
                .cartModelobj.value.listpinksizeMItemList.value.length,
            itemBuilder: (context, index) {
              ListpinksizeMItemModel model = controller
                  .cartModelobj.value.listpinksizeMItemList.value[index];
              return ListpinksizeMItem(
                model,
              );
            }),
      ),
    );
  }

  /// Section Widget

  Widget _buildPink() {
    return CustomElevatedButton(
      height: 24.h,
      width: 54.h,
      text: "lbl_pink".tr,
      buttonStyle: CustomButtonStyles.fillIndigo,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  /// Section Widget

  Widget _buildM() {
    return CustomElevatedButton(
      height: 24.h,
      width: 50.h,
      text: "lbl_m".tr,
      margin: EdgeInsets.only(left: 6.h),
      buttonStyle: CustomButtonStyles.fillIndigo,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }

  Widget _buildCheckout() {
    return CustomElevatedButton(
      width: 128.h,
      text: "lbl_checkout".tr,
      alignment: Alignment.center,
    );
  }

  /// Section Widget

  Widget _buildstackviewone() {
    return SizedBox(
      height: 252.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100.h,
              width: 130.h,
              margin: EdgeInsets.only(
                left: 20.h,
                bottom: 28.h,
              ),
              padding: EdgeInsets.only(
                left: 10.h,
                bottom: 8.h,
              ),
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFloatingIconOnerrorcontainer,
                    height: 28.h,
                    width: 32.h,
                    ImagePath: '"E:\app\photo\61KszTZqkkL._AC_UY1000_.jpg"',
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 106.h,
                          width: 128.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 100.h,
                                width: 128.h,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onErrorContainer,
                                  borderRadius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.black900.withOpacity(0.1),
                                      spreadRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        5,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              CustomIconButton(
                                  height: 34.h,
                                  width: 34.h,
                                  padding: EdgeInsets.all(8.h),
                                  decoration: IconButtonStyleHelper
                                      .fillonErrorContainer,
                                  alignment: Alignment.bottomLeft,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFrameRed300,
                                    ImagePath:
                                        '"E:\app\photo\51-603uXOjL._AC_UF1000,1000_QL80_.jpg"',
                                  )),
                              CustomImageView(
                                height: 90.h,
                                width: 90.h,
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 8.h),
                                ImagePath:
                                    '"E:\app\photo\41oo9nUz5GL._AC_UF350,350_QL80_.jpg"',
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 8.h),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 164.h,
                                child: Text(
                                  "msg_elmaayergy_b0302".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    height: 1.33,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_17_00".tr,
                                style: CustomTextStyles
                                    .titleMediumRalewayGray900Bold19,
                              ),
                              SizedBox(height: 12.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [_buildPink(), _buildM()],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgCloseBlueA700,
                                      height: 24.h,
                                      width: 28.h,
                                      ImagePath:
                                          '"E:\app\photo\61KszTZqkkL._AC_UY1000_.jpg"',
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img61ksztzqkklAcUy1000,
                          height: 70.h,
                          width: 108.h,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 8.h),
                          ImagePath: '"E:\app\photo\51ZVhHS-NNL.jpg"',
                        ),
                        SizedBox(width: 18.h),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 154.h,
                                child: Text(
                                  "msg_geometric_tool_case".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                    height: 1.33,
                                  ),
                                ),
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                "lbl_17_00".tr,
                                style: CustomTextStyles
                                    .titleMediumRalewayGray900Bold19,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24.h),
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 2.h,
            ),
            decoration: AppDecoration.fillIndigo.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Text(
              "lbl_pink".tr,
              style: theme.textTheme.titleSmall!,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 20.h,
                  bottom: 24.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 2.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.h,
                          vertical: 2.h,
                        ),
                        decoration: AppDecoration.fillIndigo.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.h),
                            Text(
                              "lbl_m".tr,
                              style: theme.textTheme.titleSmall,
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseBlueA700,
                      height: 24.h,
                      width: 28.h,
                      margin: EdgeInsets.only(left: 58.h),
                      ImagePath:
                          '"E:\app\photo\Poster-Tube-with-A-Carry-Strap-Expands-from-17-7-up-to-28-3-for-Scroll.avif"',
                    )
                  ],
                ),
              )
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle,
            height: 60.h,
            width: double.maxFinite,
            ImagePath: '"E:\app\photo\image5.jpeg"',
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Text(
                        "lbl_total".tr,
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        bottom: 6.h,
                      ),
                      child: Text(
                        "lbl 34 00".tr,
                        style: CustomTextStyles.titleMediumRalewayGray900Bold19,
                      ),
                    ),
                    Spacer(),
                    _buildCheckout(),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
