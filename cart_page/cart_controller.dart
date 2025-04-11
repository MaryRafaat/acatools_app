import 'package:acatools_app/screens/model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import 'package:acatools_app/models/listpinksize_m_item_model.dart';

class CartController extends GetxController {
  CartController(this.cartModelobj);

  TextEditingController lblQuantity = TextEditingController();

  Rx<CartModel> cartModelobj;

  @override
  void onClose() {
    super.onClose();

    lblQuantity.dispose();
  }

  void decrementQuantity(ListpinksizeMItemModel listpinksizeMItemModelobj) {
    if (listpinksizeMItemModelobj.lblQuantity!.value.text != null) {
      int quantity = int.tryParse(
              listpinksizeMItemModelobj.lblQuantity!.value.text ?? '1') ??
          1;
      if (quantity > 1) {
        quantity--;
        listpinksizeMItemModelobj.lblQuantity!.value.text = quantity.toString();
      }
    }
  }

  void incrementQuantity(ListpinksizeMItemModel listpinksizeMItemModelobj) {
    if (listpinksizeMItemModelobj.lblQuantity!.value.text != null) {
      int quantity = int.tryParse(
              listpinksizeMItemModelobj.lblQuantity!.value.text ?? '1') ??
          1;
      quantity++;
      listpinksizeMItemModelobj.lblQuantity!.value.text = quantity.toString();
    }
  }
}
