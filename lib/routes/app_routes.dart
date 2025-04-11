import 'package:get/get.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/about_binding.dart';
import 'package:acatools_app/screens/about_screen.dart';
import 'package:acatools_app/screens/app_navigation/app_navigation_binding.dart';
import 'package:acatools_app/screens/app_navigation/app_navigation_screen.dart';
import 'package:acatools_app/screens/cart_empty_shown_form_wishlist/cart_empty_shown_form_wishlist_screen.dart';
import 'package:acatools_app/screens/cart_empty_shown_form_wishlist/cart_empty_shown_form_wishlist_binding.dart';
import 'package:acatools_app/screens/choose_your_country/choose_your_country_binding.dart';
import 'package:acatools_app/screens/choose_your_country/choose_your_country_screen.dart';
import 'package:acatools_app/screens/choose_your_currency/choose_your_currency_binding.dart';
import 'package:acatools_app/screens/choose_your_currency/choose_your_currency_screen.dart';
import 'package:acatools_app/screens/choose_your_language/choose_your_language_binding.dart';
import 'package:acatools_app/screens/choose_your_language/choose_your_language_screen.dart';
import 'package:acatools_app/screens/discover/discover_bining.dart';
import 'package:acatools_app/screens/discover/discover_screen.dart';
import 'package:acatools_app/screens/creat_account_student/creat_account_student_binding.dart';
import 'package:acatools_app/screens/creat_account_student/creat_account_student_screen.dart';
import 'package:acatools_app/screens/edit_shipping_address1/edit_shipping_address1_binding.dart';
import 'package:acatools_app/screens/edit_shipping_address1/edit_shipping_address1_screen.dart';
import 'package:acatools_app/screens/flash_sale/flash_sale_binding.dart';
import 'package:acatools_app/screens/flash_sale/flash_sale_screen.dart';
import 'package:acatools_app/screens/payment_methods_history/payment_methods_history_binding.dart';
import 'package:acatools_app/screens/payment_methods_history/payment_methods_history_screen.dart';
import 'package:acatools_app/screens/payment/payment_binding.dart';
import 'package:acatools_app/screens/payment/payment_screen.dart';
import 'package:acatools_app/screens/product/product_binding.dart';
import 'package:acatools_app/screens/product/product_screen.dart';
import 'package:acatools_app/screens/product_variation/product_variation_binding.dart';
import 'package:acatools_app/screens/product_variation/product_variation_screen.dart';
import 'package:acatools_app/screens/ready_card/ready_card_binding.dart';
import 'package:acatools_app/screens/ready_card/ready_card_screen.dart';
import 'package:acatools_app/screens/search/search_binding.dart';
import 'package:acatools_app/screens/search/search_screen.dart';
import 'package:acatools_app/screens/setting_add_card_pop_up/setting_add_card_pop_up_binding.dart';
import 'package:acatools_app/screens/setting_add_card_pop_up/setting_add_card_pop_up_screen.dart';
import 'package:acatools_app/screens/setting_add_card/setting_add_card_binding.dart';
import 'package:acatools_app/screens/setting_add_card/setting_add_card_screen.dart';
import 'package:acatools_app/screens/setting_full/setting_full_binding.dart';
import 'package:acatools_app/screens/setting_full/setting_full_screen.dart';
import 'package:acatools_app/screens/setting_profile/setting_profile_binding.dart';
import 'package:acatools_app/screens/setting_profile/setting_profile_screen.dart';
import 'package:acatools_app/screens/setting/setting_binding.dart';
import 'package:acatools_app/screens/setting/setting_screen.dart';
import 'package:acatools_app/screens/shipping_address/shipping_address_binding.dart';
import 'package:acatools_app/screens/shipping_address/shipping_address_screen.dart';
import 'package:acatools_app/screens/shop_clothing/shop_clothing_binding.dart';
import 'package:acatools_app/screens/shop_clothing/shop_clothing_screen.dart';
import 'package:acatools_app/screens/shop/shop_binding.dart';
import 'package:acatools_app/screens/shop/shop_screen.dart';
import 'package:acatools_app/screens/start/start_binding.dart';
import 'package:acatools_app/screens/start/start_screen.dart';

class AppRoutes {
  static const String createAccountStudentScreen =
      '/create_account_student_screen';

  static const String startScreen = '/start_screen';

  static const String readyCardScreen = '/ready_card_screen';

  static const String shopScreen = '/shop_screen';

  static const String shopInitialPage = '/shop_initial_page';

  static const String flashSaleLiveScreen = '/flash_sale_live_screen';

  static const String shopOneScreen = '/shop_one_screen';

  static const String shopTwoScreen = '/shop_two_screen';

  static const String flashSaleScreen = '/flash_sale_screen';

  static const String searchScreen = '/search_screen';

  static const String shopClothingScreen = '/shop_clothing_screen';

  static const String productScreen = '/product_screen';

  static const String productSaleScreen = '/product_sale_screen';

  static const String productVariationsScreen = '/product_variations_screen';
  static const String wishlistPage = '/wishlist_page';

  static const String cartPage = '/cart_page';

  static const String cartEmptyShownFromWishlistScreen =
      '/cart_empty_shown_from_wishlist_screen';

  static const String paymentScreen = '/payment_screen';

  static const String discoverScreen = '/discover_screen';

  static const String profileVoucherReminderPage =
      '/profile_voucher_reminder_page';

  static const String settingsFullScreen = '/settings_full_screen';

  static const String settingsProfileScreen = '/settings_profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String settingsFullOnePage = '/settings_full_one_page';

  static const String sizesTypesScreen = '/sizes_types_screen';

  static const String shippingAddressScreen = '/shipping_address_screen';

  static const String editShippingAddress1Screen =
      '/edit_shipping_address1_screen';

  static const String settingsFullTwoScreen = '/settings_full_two_screen';
  static const String settingsAddCardScreen = '/settings_add_card_screen';

  static const String settingsAddCardPopUpScreen =
      '/settings_add_card_pop_up_screen';

  static const String paymentMethodsHistoryScreen =
      '/payment_methods_history_screen';

  static const String paymentMethodsHistoryTwoScreen =
      '/payment_methods_history_two_screen';

  static const String chooseYourCountryScreen = '/choose_your_country_screen';

  static const String chooseYourCurrencyScreen = '/choose_your_currency_screen';

  static const String chooseYourLanguageScreen = '/choose_your_language_screen';

  static const String aboutScreen = '/about_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: createAccountStudentScreen,
      page: () => CreateAccountStudentScreen(),
      bindings: [CreateAccountStudentBinding()],
    ),
    GetPage(
      name: startScreen,
      page: () => StartScreen(),
      bindings: [StartBinding()],
    ),
    GetPage(
      name: readyCardScreen,
      page: () => ReadyCardScreen(),
      bindings: [ReadyCardBinding()],
    ),
    GetPage(
      name: shopScreen,
      page: () => ShopScreen(),
      bindings: [ShopBinding()],
    ),
    GetPage(
      name: flashSaleScreen,
      page: () => FlashSaleScreen(),
      bindings: [FlashSaleBinding()],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [SearchBinding()],
    ),
    GetPage(
      name: shopClothingScreen,
      page: () => ShopClothingScreen(),
      bindings: [ShopClothingBinding()],
    ),
    GetPage(
      name: productScreen,
      page: () => ProductScreen(),
      bindings: [ProductBinding()],
    ),
    GetPage(
      name: productVariationsScreen,
      page: () => ProductVariationsScreen(),
      bindings: [ProductVariationBinding()],
    ),
    GetPage(
      name: cartEmptyShownFromWishlistScreen,
      page: () => CartEmptyShownFromWishlistScreen(),
      bindings: [CartEmptyShownFormWishlistBinding()],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [PaymentBinding()],
    ),
    GetPage(
      name: discoverScreen,
      page: () => DiscoverScreen(),
      bindings: [DiscoverBinding()],
    ),
    GetPage(
      name: settingsFullScreen,
      page: () => SettingsFullScreen(),
      bindings: [SettingFullBinding()],
    ),
    GetPage(
      name: settingsProfileScreen,
      page: () => SettingsProfileScreen(),
      bindings: [SettingProfileBinding()],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [SettingBinding()],
    ),
    GetPage(
      name: shippingAddressScreen,
      page: () => ShippingAddressScreen(),
      bindings: [ShippingAddressBinding()],
    ),
    GetPage(
      name: editShippingAddress1Screen,
      page: () => EditShippingAddress1Screen(),
      bindings: [EditShippingAddress1Binding()],
    ),
    GetPage(
      name: settingsAddCardScreen,
      page: () => SettingsAddCardScreen(),
      bindings: [SettingAddCardBinding()],
    ),
    GetPage(
      name: settingsAddCardPopUpScreen,
      page: () => SettingsAddCardPopUpScreen(),
      bindings: [SettingAddCardPopUpBinding()],
    ),
    GetPage(
      name: paymentMethodsHistoryScreen,
      page: () => PaymentMethodsHistoryScreen(),
      bindings: [PaymentMethodsHistoryBinding()],
    ),
    GetPage(
      name: chooseYourCountryScreen,
      page: () => ChooseYourCountryScreen(),
      bindings: [ChooseYourCountryBinding()],
    ),
    GetPage(
      name: chooseYourCurrencyScreen,
      page: () => ChooseYourCurrencyScreen(),
      bindings: [ChooseYourCurrencyBinding()],
    ),
    GetPage(
      name: chooseYourLanguageScreen,
      page: () => ChooseYourLanguageScreen(),
      bindings: [ChooseYourLanguageBinding()],
    ),
    GetPage(
      name: aboutScreen,
      page: () => AboutScreen(),
      bindings: [AboutBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => StartScreen(),
      bindings: [StartBinding()],
    ),
  ];
}
