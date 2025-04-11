import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/app_bar/appbar_subtitile.dart';
import 'package:acatools_app/widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_controller.dart';
import 'package:acatools_app/widgets/listloremipsum_item.dart';
import 'package:acatools_app/widgets/recentlyview_item.dart';
import 'package:acatools_app/screens/model.dart';

class WishlistPage extends StatelessWidget {
  WishlistPage({Key? key})
      : super(
          key: key,
        );

  WishlistController controller =
      Get.put(WishlistController(WishlistModel().obs));

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
            margin: EdgeInsets.only(top: 50.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 4.h),
                _buildRecentlyview(),
                SizedBox(height: 14.h),
                _buildListloremipsum()
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      height: 50.h,
      title: AppbarSubtitle(
        text: "lbl_wishlist".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget

  Widget _buildRecentlyview() {
    return Container(
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
                  .wishlistModelObj.value.recentlyviewItemList.value.length,
              (index) {
                RecentlyviewItemModel model = controller
                    .wishlistModelObj.value.recentlyviewItemList.value[index];

                return RecentlyviewItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListloremipsum() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 6.h),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.h,
            );
          },
          itemCount: controller
              .wishlistModelObj.value.listloremipsumItemList.value.length,
          itemBuilder: (context, index) {
            ListloremipsumItemModel model = controller
                .wishlistModelObj.value.listloremipsumItemList.value[index];

            return ListloremipsumItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
