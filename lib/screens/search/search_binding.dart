import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/search/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchController());
  }
}
