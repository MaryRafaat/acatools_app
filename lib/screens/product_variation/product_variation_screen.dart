import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:acatools_app/theme/custom_button_style.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/widgets/custom_elevated_button.dart';
import 'package:acatools_app/widgets/custom_icon_button.dart';
import 'package:acatools_app/widgets/custom_text_form_field.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/product_variation/product_variation_controller.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/widgets/listfgrxmgjl_item.dart';

class ProductVariationsScreen extends GetWidget<ProductVariationController> {
  const ProductVariationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
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
                    SizedBox(height: 28.h),
                    CustomImageView(
                      imagePath: ImageConstant.img71fg5rxmgjl2,
                      height: 176.h,
                      width: 88.h,
                      ImagePath: '"E:\app\photo\71FG5RXMGJL.jpg"',
                    ),
                    SizedBox(height: 6.h),
                    SizedBox(
                      height: 484.h,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                height: 10.h,
                                margin: EdgeInsets.only(top: 160.h),
                                child: AnimatedSmoothIndicator(
                                  activeIndex: 0,
                                  count: 5,
                                  effect: ScrollingDotsEffect(
                                    spacing: 10,
                                    activeDotColor:
                                        theme.colorScheme.errorContainer,
                                    dotColor: theme.colorScheme.errorContainer,
                                    dotHeight: 10.h,
                                    dotWidth: 10.h,
                                  ),
                                )),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              decoration:
                                  AppDecoration.fill0nErrorContainer.copyWith(
                                borderRadius: BorderRadiusStyle.customBorderTL8,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildHeader(),
                                  SizedBox(height: 54.h),
                                  _buildListfgrxmgjl(),
                                  SizedBox(height: 24.h),
                                  _buildQuantitytwo(),
                                  SizedBox(height: 68.h)
                                ],
                              ),
                            ),
                          ),
                          _buildBottombar()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottombar1(),
      ),
    );
  }

  /// Section Widget

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 44.h,
        vertical: 32.h,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img71fg5rxmgjl2,
            height: 62.h,
            width: 30.h,
            ImagePath: '"E:\app\photo\71FG5RXMGJL.jpg"',
          ),
          Container(
            width: 224.h,
            margin: EdgeInsets.only(top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_17_00".tr,
                  style: CustomTextStyles.headlineMediumBlack900,
                ),
                SizedBox(height: 8.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 2.h,
                  ),
                  decoration: AppDecoration.fillIndigo.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_black".tr,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeRaleway,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListfgrxmgjl() {
    return Container(
      margin: EdgeInsets.only(
        left: 36.h,
        right: 160.h,
      ),
      width: double.maxFinite,
      child: Obx(
        () => SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 32.h,
            children: List.generate(
              controller.productVariationModelObj.value.listfgrxmgjlItemList
                  .value.length,
              (index) {
                ListfgrxmgjlItemModel model = controller
                    .productVariationModelObj
                    .value
                    .listfgrxmgjlItemList
                    .value[index];

                return ListfgrxmgjlItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildQuantitytwo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Text(
                "lbl_quantity".tr,
                style: CustomTextStyles.titleMediumRalewayGray900,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.decrementQuantity();
                  },
                  child: SizedBox(
                    height: 50.h,
                    width: 50.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUserBlueA70002,
                          height: 50.h,
                          width: 50.h,
                          ImagePath: '"E:\app\photo\71FG5RXMGJL.jpg"',
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                    readonly: true,
                    width: 74.h,
                    controller: controller.lblQuantity,
                    hintText: "lbl_1".tr,
                    hintStyle: CustomTextStyles.headlineMediumIndigo900,
                    textInputAction: TextInputAction.done,
                    contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 20.h, 12.h),
                    borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                    fillColor: appTheme.indigo50,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.incrementQuantity();
                  },
                  child: Container(
                    height: 50.h,
                    width: 50.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFloatingIcon,
                          height: 50.h,
                          width: 50.h,
                          ImagePath: '"E:\app\photo\s-l400.png"',
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
    );
  }

  Widget _buildBottombar() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 8.h,
      ),
      decoration: AppDecoration.outlineBlack9002,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(
                  height: 40.h,
                  width: 46.h,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFavoriteGray900,
                    ImagePath:
                        '"E:\app\photo\Casio-Scientific-Calculator-FX-991-ES-PLUS-2nd-Edition-Blue-(1).webp"',
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_add_to_cart".tr,
                    buttonStyle: CustomButtonStyles.fillGray900,
                  ),
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_buy_now".tr,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: 136.h,
            child: Divider(),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildBottombar1() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
        onchanged: (BottomBarEnum type) {},
      ),
    );
  }

  ///Handling route based on bottom click actions

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Arrowright:
        return AppRoutes.shopInitialPage;

      case BottomBarEnum.Wishlist:
        return AppRoutes.wishlistPage;

      case BottomBarEnum.Television:
        return AppRoutes.settingsFullOnePage;

      case BottomBarEnum.Bag:
        return AppRoutes.cartPage;

      case BottomBarEnum.Lock:
        return AppRoutes.profileVoucherReminderPage;

      default:
        return "/";
    }
  }
}
