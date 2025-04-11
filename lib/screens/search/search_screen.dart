import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitile.dart';
import 'package:acatools_app/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:acatools_app/widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/widgets/Chipviewone_item.dart';
import 'package:acatools_app/widgets/Chipviewone_one_item.dart';
import 'package:acatools_app/screens/search/search_controller.dart'
    as CustomSearchController;

class SearchScreen extends GetWidget<CustomSearchController.SearchController> {
  const SearchScreen({Key? key})
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
            margin: EdgeInsets.only(top: 56.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 14.h,
                      right: 20.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        _buildRecommendations(),
                        SizedBox(height: 24.h),
                        _buildColumntitletwo()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.h)
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
              text: "lbl_search".tr,
            ),
            Expanded(
              child: AppbarTitleSearchviewOne(
                margin: EdgeInsets.only(left: 9.h),
                hintText: "",
                controller: controller.searchController,
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildRecommendations() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 6.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_history".tr,
            style: CustomTextStyles.titleMediumRalewayGray900Medium,
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => Wrap(
                runSpacing: 6.h,
                spacing: 6.h,
                children: List<Widget>.generate(
                  controller
                      .searchModelObj.value.chipviewoneItemList.value.length,
                  (index) {
                    ChipviewoneItemModel model = controller
                        .searchModelObj.value.chipviewoneItemList.value[index];

                    return ChipviewoneItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildColumntitletwo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recommendations".tr,
            style: CustomTextStyles.titleMediumRalewayGray900Medium,
          ),
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => Wrap(
                runSpacing: 6.h,
                spacing: 6.h,
                children: List<Widget>.generate(
                  controller
                      .searchModelObj.value.chipviewoneOneItemList.value.length,
                  (index) {
                    ChipviewoneOneItemModel model = controller.searchModelObj
                        .value.chipviewoneOneItemList.value[index];

                    return ChipviewoneOneItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  Widget _buildBottombar() {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onchanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
        onChanged: (BottomBarEnum type) {},
      ),
    );
  }

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
