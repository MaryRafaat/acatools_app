import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/choose_payment_method1/choose_payment_method1_screen.dart';
import 'package:acatools_app/screens/choose_payment_method1/choose_payment_method1_controller.dart';
import 'package:acatools_app/screens/couldn_t_proceed_payment/couldn_t_proceed_payment_screen.dart';
import 'package:acatools_app/screens/couldn_t_proceed_payment/couldn_t_proceed_payment_controller.dart';
import 'package:acatools_app/screens/deleting_account_dilalog/deleting_account_controller.dart';
import 'package:acatools_app/screens/deleting_account_dilalog/deleting_account_dilalog.dart';
import 'package:acatools_app/screens/edit_card_bottomsheet/edit_card_bottomsheet_screen.dart';
import 'package:acatools_app/screens/edit_card_bottomsheet/edit_card_controller.dart';
import 'package:acatools_app/screens/edit_shipping_address1/edit_shipping_address1_screen.dart';
import 'package:acatools_app/screens/edit_shipping_address1/edit_shipping_address1_controller.dart';
import 'package:acatools_app/screens/payment_in_progress_dialog/payment_in_progress_controller.dart';
import 'package:acatools_app/screens/payment_in_progress_dialog/payment_in_progress_dialog.dart';
import 'package:acatools_app/screens/your_card_been_charged_dialog/your_card_been_charged_controller.dart';
import 'package:acatools_app/screens/your_card_been_charged_dialog/your_card_been_charged_dialog.dart';
import 'package:acatools_app/screens/app_navigation/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF000000),
                          fontSize: 20.fsize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFF888888),
                          fontSize: 16.fsize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFF000000),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "02 create Account student",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.createAccountStudentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Start",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "12 Ready Card",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.readyCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15 Shop",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "16 Flash Sale + Live",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flashSaleLiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15 Shop One",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15 Shop Two",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "17 Flash Sale",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flashSaleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "28 Search",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "25 Shop Clothing",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shopClothingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "35 Product",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "36 Product Sale",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.productSaleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "38 Product Variations",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productVariationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "46 Cart Empty Shown From Wishlist",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.cartEmptyShownFromWishlistScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "51 Edit Shipping Address BottomSheet",
                          onTapScreenTitle: () {
                            Get.put(EditShippingAddress1Controller());
                            onTapBottomSheetTitle(
                                context, EditShippingAddress1Screen());
                          },
                        ),
                        _buildScreenTitle(
                          screenTitle: "48 Payment",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "52 Choose Payment Method 1 Card BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              ChoosePaymentMethod1CardBottomsheet(
                                  Get.put(ChoosePaymentMethod1Controller()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "54 Payment in Progress Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              PaymentInProgressDialog(
                                  Get.put(PaymentInProgressController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "55 Couldn\\'t Proceed Payment Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              CouldnTProceedPaymentDialog(
                                  Get.put(CouldnTProceedPaymentController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "56 Your Card Been Charged Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              YourCardBeenChargedDialog(
                                  Get.put(YourCardBeenChargedController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Discover",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.discoverScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "87 Settings Full",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsFullScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "88 Settings Profile",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "86 Settings",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "99 Sizes Types",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sizesTypesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "94 Shipping Address",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shippingAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "95 Edit Shipping Address",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editShippingAddress1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "87 Settings Full Two",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsFullTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "89 Settings Add Card",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsAddCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "90 Settings Add Card Pop-Up",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.settingsAddCardPopUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "91 Edit Card BottomSheet",
                          onTapScreenTitle: () => onTapBottomSheetTitle(
                              context,
                              EditCardBottomsheet(
                                  Get.put(EditCardController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "92 Payment Methods + History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodsHistoryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "93 Payment Methods + History Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentMethodsHistoryTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "96 Choose Your Country",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourCountryScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "98 Choose Your Currency",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourCurrencyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "97 Choose Your Language",
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseYourLanguageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "100 Deleting Account - Dialog",
                          onTapScreenTitle: () => onTapDialogTitle(
                              context,
                              DeletingAccountDialog(
                                  Get.put(DeletingAccountController()))),
                        ),
                        _buildScreenTitle(
                          screenTitle: "101 About",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Common click event for screen navigation

  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }

  /// Common click event for bottomsheet

  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common click event for dialog

  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: className,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
        );
      },
    );
  }

  /// Common widget

  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fsize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle1(String routeName) {
    Get.toNamed(routeName);
  }
}
