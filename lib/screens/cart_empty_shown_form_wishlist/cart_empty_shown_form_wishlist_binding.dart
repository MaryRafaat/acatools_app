import 'package:acatools_app/screens/cart_empty_shown_form_wishlist/cart_empty_shown_form_wishlist_controller.dart';
import 'package:acatools_app/core/app_export.dart';

class CartEmptyShownFormWishlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartEmptyShownFormWishlistController());
  }
}
