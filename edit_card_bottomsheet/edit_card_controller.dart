import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class EditCardController extends GetxController {
  Rx<EditCardModel> editCardModelObj = EditCardModel().obs;

  TextEditingController cardHolderFieldController = TextEditingController();
  TextEditingController cardNumberFieldController = TextEditingController();
  TextEditingController validFieldController = TextEditingController();
  TextEditingController cvvFieldController = TextEditingController();
  final TextEditingController fieldsevenController = TextEditingController();
  final TextEditingController fieldfiveController = TextEditingController();
  final TextEditingController fieldoneController = TextEditingController();
  TextEditingController fieldthreeController = TextEditingController();
  @override
  void onClose() {
    super.onClose();
    cardHolderFieldController.dispose();
    cardNumberFieldController.dispose();
    validFieldController.dispose();
    cvvFieldController.dispose();
    fieldsevenController.dispose();
    fieldfiveController.dispose();
    fieldoneController.dispose();
    fieldthreeController.dispose();
  }
}
