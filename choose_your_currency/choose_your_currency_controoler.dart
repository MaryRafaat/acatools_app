import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ChooseYourCurrencyController extends GetxController {
  Rx<ChooseYourCurrencyModel> chooseYourCurrencyModelObj =
      ChooseYourCurrencyModel().obs;
  Rx<String> radioGroup = "".obs;
}
