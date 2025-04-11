import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ShopClothingController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ShopClothingModel> shopClothingModelObj = ShopClothingModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
