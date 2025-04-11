import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class AboutController extends GetxController {
  Rx<AboutModel> aboutModel = AboutModel().obs;
}
