import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/choose_your_language/choose_your_language_controller.dart';

class ChooseYourLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseYourLanguageController>(
      () => ChooseYourLanguageController(),
    );
  }
}
