import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/provider/bottom_navigation.dart';
import 'package:wheels/src/utils/constants.dart';

BottomNavigationBar buildBottomNavigation(BottomNavigation provider) {
  return BottomNavigationBar(
    onTap: (int index) {
      provider.currentIndex = index;
    },
    currentIndex: provider.currentIndex,
    type: BottomNavigationBarType.fixed,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/bag.svg",
          width: 26.0,
          height: 26.0,
          color: kIconColor,
        ),
        title: Container(),
        activeIcon: SvgPicture.asset(
          "assets/icons/bag.svg",
          width: 26.0,
          height: 26.0,
          color: kWhiteColor,
        ),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/home.svg",
          width: 26.0,
          height: 26.0,
          color: kIconColor,
        ),
        title: Container(),
        activeIcon: SvgPicture.asset(
          "assets/icons/home.svg",
          width: 26.0,
          height: 26.0,
          color: kWhiteColor,
        ),
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/user.svg",
          width: 26.0,
          height: 26.0,
          color: kIconColor,
        ),
        title: Container(),
        activeIcon: SvgPicture.asset(
          "assets/icons/user.svg",
          width: 26.0,
          height: 26.0,
          color: kWhiteColor,
        ),
      ),
    ],
  );
}
