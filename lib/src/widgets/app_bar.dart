import 'package:flutter/material.dart';
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
      // IconButton(
      //   icon: ClipOval(child: Image.asset("assets/images/profile.png")),
      //   onPressed: () {},
      // )
    ],
  );
}
