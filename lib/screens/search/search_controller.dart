import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class SearchController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;
  TextEditingController searchController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
