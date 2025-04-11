import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_icon_button.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:acatools_app/widgets/gridfabercastel_item.dart';
import 'package:acatools_app/screens/shop/shop_controller.dart';
import 'package:acatools_app/widgets/bigsalebanner_item.dart';

// ignore_for_file: must_be_immutable

class ShopInitialPage extends StatelessWidget {
  ShopInitialPage({Key? key})
      : super(
          key: key,
        );

  ShopController controller = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.gradientOnErrorContainerToRedA1001,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomAppBar(
            title: AppbarTitleSearchview(
              margin: EdgeInsets.only(right: 30.h),
              hintText: "lbl_search".tr,
              controller: controller.searchController,
            ),
          ),
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 12.h,
                top: 8.h,
                right: 12.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Obx(
                      () => CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 130.h,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 0.96,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            controller.sliderIndex.value = index;
                          },
                        ),
                        itemCount: controller.shopInitialModelObj.value
                            .bigsalebannerItemList.value.length,
                        itemBuilder: (context, index, realIndex) {
                          BigsalebannerItemModel model = controller
                              .shopInitialModelObj
                              .value
                              .bigsalebannerItemList
                              .value[index];

                          return BigsalebannerItemwidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(
                      left: 2.h,
                      right: 10.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_categories".tr,
                          style: CustomTextStyles.titleLargeBlack900Bold22,
                        ),
                        Spacer(),
                        Text(
                          "lbl_see_all".tr,
                          style: CustomTextStyles.titlesmallGray900Bold15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.h,
                          ),
                          child: CustomIconButton(
                            height: 28.h,
                            width: 30.h,
                            padding: EdgeInsets.all(6.h),
                            decoration: IconButtonStyleHelper.fillBlueA,
                            alignment: Alignment.bottomCenter,
                            child: CustomImageView(
                              ImagePath: ImageConstant.imgArrow,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 2.h,
                        right: 10.h,
                      ),
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
                            controller.shopInitialModelObj.value
                                .gridfabercastelItemList.value.length,
                            (index) {
                              GridfabercastelItemModel model = controller
                                  .shopInitialModelObj
                                  .value
                                  .gridfabercastelItemList
                                  .value[index];

                              return GridfabercastelItemWidget(
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
            ),
          )
        ],
      ),
    );
  }
}
