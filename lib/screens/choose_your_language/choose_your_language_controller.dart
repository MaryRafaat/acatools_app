import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ChooseYourLanguageController extends GetxController {
  Rx<ChooseYourLanguageModel> chooseYourLanguageModelObj =
      ChooseYourLanguageModel().obs;
  Rx<String> language = "".obs;
}
