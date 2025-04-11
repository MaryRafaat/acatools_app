import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ProductVariationController extends GetxController {
  TextEditingController lblQuantity = TextEditingController();

  Rx<ProductVariationsModel> productVariationModelObj =
      ProductVariationsModel().obs;
  @override
  void onClose() {
    super.onClose();
    lblQuantity.dispose();
    // Initialize any necessary data or state here
  }

  void decrementQuantity() {
    int quantity = int.tryParse(lblQuantity.text ?? '1') ?? 1;
    if (quantity > 1) {
      quantity--;
      lblQuantity.text = quantity.toString();
    }
  }

  void incrementQuantity() {
    int quantity = int.tryParse(lblQuantity.text ?? '1') ?? 1;
    quantity++;
    lblQuantity.text = quantity.toString();
  }
}
