import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/shop_clothing/shop_clothing_controller.dart';

class ShopClothingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShopClothingController());
  }
}
