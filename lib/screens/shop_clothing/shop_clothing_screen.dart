import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/shop_clothing/shop_clothing_controller.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitile.dart';
import 'package:acatools_app/widgets/app_bar/appbar_title_searchview_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import '../wishlist_page/wishlist_page.dart';
import 'package:acatools_app/widgets/gridloremipsum_item.dart';
import 'package:acatools_app/widgets/Subcategories_item.dart';

class ShopClothingScreen extends GetWidget<ShopClothingController> {
  const ShopClothingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(),
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.gradientOnErrorContainerToRedA,
        child: SafeArea(
          child: Container(
            height: 738.h,
            margin: EdgeInsets.only(top: 56.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 12.h),
                    padding: EdgeInsets.symmetric(horizontal: 6.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _buildRowtitleone(),
                        SizedBox(height: 20.h),
                        _buildGridloremipsum()
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    top: 12.h,
                    bottom: 24.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildSubcategoies(),
                      Spacer(),
                      SizedBox(
                        height: 84.h,
                        width: 374.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottombar(),
      ),
    );
  }

  /// Section Widget

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 19.h,
        ),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "lbl_shop".tr,
            ),
            Expanded(
              child: AppbarTitleSearchviewOne(
                margin: EdgeInsets.only(left: 19.h),
                hintText: "lbl_tools".tr,
                controller: controller.searchController,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildRowtitleone() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_all_items".tr,
            style: CustomTextStyles.titleLargeBlack900Bold22,
          ),
          CustomImageView(
            ImagePath: ImageConstant.imgCar,
            height: 28.h,
            width: 26.h,
          )
        ],
      ),
    );
  }

  Widget _buildGridloremipsum() {
    return Expanded(
      child: Obx(
        () => ResponsiveGridListBuilder(
          minItemWidth: 1,
          minItemsPerRow: 2,
          maxItemsPerRow: 2,
          horizontalGridSpacing: 4.h,
          verticalGridSpacing: 4.h,
          builder: (context, items) => ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            children: items,
          ),
          gridItems: List.generate(
            controller
                .shopClothingModelObj.value.gridloremipsumItemList.value.length,
            (index) {
              GridloremipsumItemModel model = controller.shopClothingModelObj
                  .value.gridloremipsumItemList.value[index];

              return GridloremipsumItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildSubcategoies() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      width: double.maxFinite,
      child: Obx(
        () => SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 6.h),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 8.h,
            children: List.generate(
              controller
                  .shopClothingModelObj.value.subcategoiesItemList.value.length,
              (index) {
                SubcategoiesItemModel model = controller.shopClothingModelObj
                    .value.subcategoiesItemList.value[index];
                return SubcategoiesItemWidget(
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

  Widget _buildBottombar() {
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
