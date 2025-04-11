import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/screens/flash_sale/flash_sale_controller.dart';
import 'package:acatools_app/widgets/Gridloremipsum_item1.dart';

class FlashSaleScreen extends GetWidget<FlashSaleController> {
  const FlashSaleScreen({Key? key})
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
          child: Container(
            height: 778.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [_buildColumntitle(), _buildGridloremipsum()],
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

  Widget _buildColumntitle() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 20.h),
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: AppDecoration.column12,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_essential_supplies".tr,
              style: theme.textTheme.headlineMedium,
            ),
            Text(
              "msg_choose_your_order".tr,
              style: CustomTextStyles.titleSmallGray900,
            ),
            SizedBox(height: 120.h)
          ],
        ),
      ),
    );
  }

  /// Section Widget

  Widget _buildGridloremipsum() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
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
                .flashSaleModelObj.value.gridloremipsumItemList.value.length,
            (index) {
              GridloremipsumItemModel model = controller
                  .flashSaleModelObj.value.gridloremipsumItemList.value[index];
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
