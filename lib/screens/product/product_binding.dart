import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/product/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
