import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class WishlistController extends GetxController {
  WishlistController(this.wishlistModelObj);

  Rx<WishlistModel> wishlistModelObj = WishlistModel().obs;
}
