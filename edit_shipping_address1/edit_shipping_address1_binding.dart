import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/edit_shipping_address1/edit_shipping_address1_controller.dart';

class EditShippingAddress1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditShippingAddress1Controller());
  }
}
