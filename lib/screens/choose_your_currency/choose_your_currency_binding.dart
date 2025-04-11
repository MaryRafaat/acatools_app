import 'package:acatools_app/screens/choose_your_currency/choose_your_currency_controoler.dart';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ChooseYourCurrencyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseYourCurrencyController>(
      () => ChooseYourCurrencyController(),
    );
  }
}
