import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/setting_add_card/setting_add_card_controller.dart';

class SettingAddCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingAddCardController());
  }
}
