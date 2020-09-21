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
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: kWhiteColor,
            ),
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
