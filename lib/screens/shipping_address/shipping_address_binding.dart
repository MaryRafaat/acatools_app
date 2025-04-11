import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/shipping_address/shipping_address_controller.dart';

class ShippingAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingAddressController());
  }
}
