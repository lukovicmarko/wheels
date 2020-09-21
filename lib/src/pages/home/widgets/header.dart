import 'package:flutter/material.dart';
import 'package:wheels/src/pages/home/widgets/filter.dart';
import 'package:wheels/src/pages/home/widgets/search.dart';
import 'package:wheels/src/utils/constants.dart';

class Header extends StatelessWidget {
  Header({this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome, User!',
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
          Row(
            children: [
              Search(),
              SizedBox(
                width: 15.0,
              ),
              Filter(),
            ],
          ),
        ],
      ),
    );
  }
}
