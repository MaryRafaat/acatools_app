import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class StartController extends GetxController {
  Rx<StartModel> startModelObj = StartModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.createAccountStudentScreen);
    });
  }
}
