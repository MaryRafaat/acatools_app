import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/ready_card/ready_card_controller.dart';

class ReadyCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReadyCardController());
  }
}
