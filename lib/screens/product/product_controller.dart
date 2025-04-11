import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ProductController extends GetxController {
  Rx<ProductModel> productModelObj = ProductModel().obs;
}
