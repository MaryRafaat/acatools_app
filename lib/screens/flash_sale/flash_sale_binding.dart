import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/flash_sale/flash_sale_controller.dart';

class FlashSaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashSaleController());
  }
}
