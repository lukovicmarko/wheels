import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheels/src/utils/constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SvgPicture.asset(
                "assets/icons/loupe.svg",
                color: kWhiteColor,
                width: 22.0,
              ),
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 19.0,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 4.0),
                ),
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
