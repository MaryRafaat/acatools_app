import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ShopController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ShopModel> shopModelObj = ShopModel().obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<ShopInitialModel> shopInitialModelObj = ShopInitialModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
