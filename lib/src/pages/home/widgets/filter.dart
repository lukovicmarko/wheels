import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/utils/constants.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.0,
      width: 42.0,
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kYellowColor,
      ),
      child: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/equalizer.svg",
          color: kWhiteColor,
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.85,
              color: kBackgroundColor,
            ),
          );
        },
      ),
    );
  }
}
