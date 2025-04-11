import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';
import 'package:acatools_app/screens/model.dart';

class CreateAccountStudentController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  Rx<CreateAccountStudentModel> createAccountStudentModelObj =
      CreateAccountStudentModel().obs;

  get phoneNumberController => null;
  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    idController.dispose();
    phoneController.dispose();
  }
}
