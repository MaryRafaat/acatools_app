import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/core/network/network_into.dart';
import 'package:acatools_app/theme/custom_text_style.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkInfo(Connectivity()));
    Get.put(PrefUtils());
    Get.put(SizeUtils());
    Get.put(AppDecoration());
    Get.put(ThemeHelper());
    Get.put(CustomTextStyles());
    Get.put(AppLocalization());
  }
}
