import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/start/start_controller.dart';

class StartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StartController());
  }
}
