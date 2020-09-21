import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/utils/constants.dart';

AppBar buildAppBar(BuildContext context, icon, onPress, actionIcon) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        icon,
        width: 27.0,
        color: kWhiteColor,
      ),
      onPressed: onPress,
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
    actions: [actionIcon],
  );
}
