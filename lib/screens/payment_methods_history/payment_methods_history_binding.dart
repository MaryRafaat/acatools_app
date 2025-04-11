import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/payment_methods_history/payment_methods_history_controller.dart';

class PaymentMethodsHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodsHistoryController());
  }
}
