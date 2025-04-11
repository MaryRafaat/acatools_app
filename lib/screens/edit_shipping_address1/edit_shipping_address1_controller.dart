import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class EditShippingAddress1Controller extends GetxController {
  Rx<EditshippingAddress1Model> editShippingAddressModelObj =
      EditshippingAddress1Model().obs;

  TextEditingController fieldoneController = TextEditingController();

  TextEditingController fieldthreeController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void onClose() {
    super.onClose();
    fieldoneController.dispose();
    fieldthreeController.dispose();
    zipcodeController.dispose();
    passwordController.dispose();
  }
}
