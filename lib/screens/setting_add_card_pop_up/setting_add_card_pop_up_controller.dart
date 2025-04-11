import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class SettingAddCardPopUpController extends GetxController {
  TextEditingController fieldoneController = TextEditingController();

  TextEditingController fieldthreeController = TextEditingController();

  TextEditingController fieldfiveController = TextEditingController();

  TextEditingController fieldsevenController = TextEditingController();

  Rx<SettingsAddCardPopUpModel> settingAddCardPopUpModelObj =
      SettingsAddCardPopUpModel().obs;

  @override
  void onClose() {
    super.onClose();
    fieldoneController.dispose();
    fieldthreeController.dispose();
    fieldfiveController.dispose();
    fieldsevenController.dispose();
  }
}
