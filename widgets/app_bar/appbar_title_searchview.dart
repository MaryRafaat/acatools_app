import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../custom_search_view.dart';

class AppbarTitleSearchview extends StatelessWidget {
  AppbarTitleSearchview({Key? key, this.hintText, this.controller, this.margin})
      : super(
          key: key,
        );

  final String? hintText;

  final TextEditingController? controller;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSearchView(
        width: 278.h,
        controller: controller,
        hintText: "lbl_search".tr,
        contentPadding: EdgeInsets.fromLTRB(84.h, 6.h, 18.h, 6.h),
      ),
    );
  }
}
