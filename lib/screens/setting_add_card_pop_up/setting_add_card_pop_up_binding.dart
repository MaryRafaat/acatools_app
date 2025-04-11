import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/setting_add_card_pop_up/setting_add_card_pop_up_controller.dart';

class SettingAddCardPopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingAddCardPopUpController());
  }
}
