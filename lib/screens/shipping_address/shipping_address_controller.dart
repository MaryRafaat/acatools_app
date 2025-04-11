import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ShippingAddressController extends GetxController {
  TextEditingController fieldoneController = TextEditingController();

  TextEditingController fieldthreeController = TextEditingController();

  TextEditingController fieldfiveController = TextEditingController();

  TextEditingController titilethreeController = TextEditingController();

  Rx<ShippingAddressModel> shippingAddressModelObj = ShippingAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    fieldoneController.dispose();
    fieldthreeController.dispose();
    fieldfiveController.dispose();
    titilethreeController.dispose();
  }
}
