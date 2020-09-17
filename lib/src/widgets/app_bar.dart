import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/utils/constants.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kWhiteColor,
      ),
      onPressed: () {},
    ),
    title: Text(
      "Wheels",
      style: TextStyle(color: kWhiteColor),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/bag.svg",
          color: kWhiteColor,
          width: 24.0,
        ),
        onPressed: () {},
      )
    ],
  );
}
