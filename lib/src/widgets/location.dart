import 'package:flutter/material.dart';
import 'package:wheels/src/utils/constants.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: kOrangeColor,
          size: 20.0,
        ),
        Text(
          "Kragujevac",
          maxLines: 1,
          softWrap: true,
          style: TextStyle(
            fontSize: 18.0,
            color: kColorGreen,
          ),
        ),
      ],
    );
  }
}
