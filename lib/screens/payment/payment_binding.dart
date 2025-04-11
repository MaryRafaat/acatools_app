import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/payment/payment_controller.dart';

class PaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
