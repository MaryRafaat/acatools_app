import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class ProfileVoucherReminderController extends GetxController {
  var ProfileVoucherReminderModelObj;

  ProfileVoucherReminderController(this.ProfileVoucherReminderModelObj);

  Rx<ProfileVoucherReminderModel> profileVoucherReminderPageModelObj =
      ProfileVoucherReminderModel().obs;
}
