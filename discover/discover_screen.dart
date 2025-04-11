import 'dart:async';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/widgets/app_bar/appbar_title.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:acatools_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:acatools_app/widgets/app_bar/custom_app_bar.dart';
import 'package:acatools_app/widgets/custom_buttom_bar.dart';
import 'package:acatools_app/screens/cart_page/cart_screen.dart';
import 'package:acatools_app/screens/profile_voucher_reminder/profile_voucher_reminder_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/wishlist_page/wishlist_page.dart';
import 'package:acatools_app/screens/discover/discover_controller.dart';

class DiscoverScreen extends GetWidget<DiscoverController> {
  const DiscoverScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: theme.colorScheme.onErrorContainer,
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: AppDecoration.fillonErrorContainer1,
        child: SafeArea(
          child: Container(
            height: 686.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [_buildMapone(), _buildAppbar()],
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

  Widget _buildMapone() {
    return SizedBox(
      height: 410.h,
      width: 372.h,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          this.controller.googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget

  PreferredSizeWidget _buildAppbar() {
    return CustomAppBar(
      height: 94.h,
      title: AppbarTitle(
        text: "lbl_discover".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastonprimarycontainer,
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBagOnprimarycontainer,
          margin: EdgeInsets.only(
            left: 28.h,
            right: 27.h,
          ),
        )
      ],
      styleType: Style
          .bgGradientnameonErrorContaineropacity07nameonErrorContaineropacity07,
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
