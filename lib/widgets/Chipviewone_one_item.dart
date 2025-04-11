import 'package:acatools_app/screens/model.dart';
import 'package:flutter/material.dart' hide SearchController;

import '../../../core/app_export.dart';

// ignore_for_file: must_be_immutable

class ChipviewoneOneItemWidget extends StatelessWidget {
  ChipviewoneOneItemWidget(this.chipviewoneOneItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ChipviewoneOneItemModel chipviewoneOneItemModelobj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 6.h,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewoneOneItemModelobj.oneOne!.value,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 17.fsize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (chipviewoneOneItemModelobj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray50,
        selectedColor: theme.colorScheme.primary,
        side: BorderSide.none,
        shape: (chipviewoneOneItemModelobj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  8.h,
                ))
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
        onSelected: (value) {
          chipviewoneOneItemModelobj.isSelected!.value = value;
        },
      ),
    );
  }
}
