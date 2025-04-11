import 'package:flutter/material.dart';

import '../../core/app_export.dart';

enum Style {
  bgGradientnameonErrorContaineropacity07nameonErrorContaineropacity07
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      this.height,
      this.shape,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions})
      : super(
          key: key,
        );

  final double? height;

  final ShapeBorder? shape;

  final Style? styleType;

  final double? leadingWidth;
  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      shape: shape,
      toolbarHeight: height ?? 56.h,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.h,
      );

  _getStyle() {
    switch (styleType) {
      case Style
            .bgGradientnameonErrorContaineropacity07nameonErrorContaineropacity07:
        return Container(
          height: 94.h,
          width: 372.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0.79),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onErrorContainer.withOpacity(0.7),
                theme.colorScheme.onErrorContainer.withOpacity(0.7)
              ],
            ),
          ),
        );

      default:
        return null;
    }
  }
}
