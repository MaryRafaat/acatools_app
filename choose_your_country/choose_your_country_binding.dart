import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/choose_your_country/choose_your_country_controller.dart';

class ChooseYourCountryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseYourCountryController());
  }
}
