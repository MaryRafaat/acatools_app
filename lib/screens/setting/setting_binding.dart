import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/setting/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingController());
  }
}
