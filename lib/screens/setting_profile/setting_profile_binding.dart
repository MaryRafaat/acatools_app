import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/setting_profile/setting_profile_controller.dart';

class SettingProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingProfileController());
  }
}
