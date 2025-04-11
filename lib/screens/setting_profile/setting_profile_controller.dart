import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class SettingProfileController extends GetxController {
  TextEditingController nameoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SettingsProfileModel> settingProfileModelObj = SettingsProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
