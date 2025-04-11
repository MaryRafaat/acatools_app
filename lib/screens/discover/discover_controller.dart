import 'dart:async';
import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DiscoverController extends GetxController {
  Rx<DiscoverModel> discoverModelObj = DiscoverModel().obs;
  Completer<GoogleMapController> googleMapController = Completer();
}
