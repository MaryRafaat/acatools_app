import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/about_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(() => AboutController());
  }
}
