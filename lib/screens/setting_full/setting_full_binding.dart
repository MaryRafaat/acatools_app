import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/setting_full/setting_full_controller.dart';

class SettingFullBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingFullController());
  }
}
