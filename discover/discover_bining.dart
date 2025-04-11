import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/discover/discover_controller.dart';

class DiscoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverController());
  }
}
