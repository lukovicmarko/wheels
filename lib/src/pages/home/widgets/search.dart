import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheels/src/utils/constants.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: kBorderColor, width: 1.5),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
