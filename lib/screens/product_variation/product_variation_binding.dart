import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/product_variation/product_variation_controller.dart';

class ProductVariationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductVariationController());
  }
}
