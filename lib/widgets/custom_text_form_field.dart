import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const CustomTextFormField(
      {super.key,
      this.label,
      this.hintText,
      this.keyboardType,
      required String Text,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator, //bn3ml feh condtions ll 7aga
      controller: controller, //bn5zn feh al 7aga aly user ktbha
      keyboardType: keyboardType ?? TextInputType.emailAddress,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                const BorderSide(color: Color.fromRGBO(208, 122, 36, 1))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.green, width: 3)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.red, width: 3)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.red, width: 3)),
        label: Text(label ?? 'label'),
        hintText: hintText,
      ),
    );
  }
}
