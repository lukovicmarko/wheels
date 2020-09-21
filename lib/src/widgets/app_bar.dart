import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/utils/constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/menu.svg",
        width: 27.0,
        color: kWhiteColor,
      ),
      onPressed: () {},
    ),
    title: Text(
      "Wheels",
      style: TextStyle(
        color: kWhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 28.0,
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        iconSize: 35.0,
        icon: ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.asset(
            "assets/images/profile.jpg",
          ),
        ),
        onPressed: () {},
      )
    ],
  );
}
