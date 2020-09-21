import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/utils/constants.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

BubbleBottomBar buildBottomNavigation(provider) {
  return BubbleBottomBar(
    backgroundColor: Color(0xFF102733),
    opacity: 1,
    elevation: 0,
    currentIndex: provider.currentIndex,
    onTap: (int index) {
      provider.currentIndex = index;
    },
    items: <BubbleBottomBarItem>[
      BubbleBottomBarItem(
        backgroundColor: kSeconaryColor,
        icon: SvgPicture.asset(
          "assets/icons/like.svg",
          width: 26.0,
          height: 26.0,
          color: kWhiteColor,
        ),
        activeIcon: SvgPicture.asset(
          "assets/icons/like_fill.svg",
          width: 26.0,
          height: 26.0,
          color: kYellowColor,
        ),
        title: Text(
          "Favorites",
          style: TextStyle(
            color: kYellowColor,
          ),
        ),
      ),
      BubbleBottomBarItem(
        backgroundColor: kSeconaryColor,
        icon: SvgPicture.asset(
          "assets/icons/home.svg",
          width: 26.0,
          height: 26.0,
          color: kWhiteColor,
        ),
        activeIcon: SvgPicture.asset(
          "assets/icons/home_fill.svg",
          width: 26.0,
          height: 26.0,
          color: kYellowColor,
        ),
        title: Text(
          "Home",
          style: TextStyle(
            color: kYellowColor,
          ),
        ),
      ),
      BubbleBottomBarItem(
        backgroundColor: kSeconaryColor,
        icon: SvgPicture.asset(
          "assets/icons/user.svg",
          width: 26.0,
          height: 26.0,
          color: kWhiteColor,
        ),
        activeIcon: SvgPicture.asset(
          "assets/icons/user_fill.svg",
          width: 26.0,
          height: 26.0,
          color: kYellowColor,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: kYellowColor,
          ),
        ),
      ),
    ],
  );
}
