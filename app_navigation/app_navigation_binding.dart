import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/app_navigation/app_navigation_controller.dart';

class AppNavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppNavigationController>(() => AppNavigationController());
  }
}
