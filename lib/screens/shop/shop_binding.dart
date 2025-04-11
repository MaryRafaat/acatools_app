import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/shop/shop_controller.dart';

class ShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopController());
  }
}
