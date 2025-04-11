import 'package:flutter/material.dart';

import '../core/app_export.dart';

enum BottomBarEnum {
  Arrowright,
  Wishlist,
  Television,
  Bag,
  Lock;
}

// ignore_for_file: must_be_immutable

class CustomBottomBar extends StatelessWidget {
  final Function(BottomBarEnum type) onChanged;
  CustomBottomBar(
      {Key? key,
      required this.onChanged,
      required Null Function(BottomBarEnum type) onchanged})
      : super(
          key: key,
        );
  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgArrowRight,
      activeIcon: ImageConstant.imgArrowRight,
      type: BottomBarEnum.Arrowright,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgwishlist,
      activeIcon: ImageConstant.imgwishlist,
      type: BottomBarEnum.Wishlist,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTelevision,
      activeIcon: ImageConstant.imgTelevision,
      type: BottomBarEnum.Television,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgBag,
      activeIcon: ImageConstant.imgBag,
      type: BottomBarEnum.Bag,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      type: BottomBarEnum.Lock,
    )
  ];

  // Removed redundant declaration of onChanged

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.16),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -1,
            ),
          ),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                ImagePath: bottomMenuList[index].icon,
                height: 20.h,
                width: 24.h,
                color: theme.colorScheme.primary,
              ),
              activeIcon: CustomImageView(
                ImagePath: bottomMenuList[index].activeIcon,
                height: 30.h,
                width: 26.h,
                color: appTheme.redA100,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;

            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}
// ignore_for_file: must_be_immutable

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
