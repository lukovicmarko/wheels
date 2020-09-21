import 'package:flutter/material.dart';
import 'package:wheels/src/utils/constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Popular', 'New', 'Wheels', 'Tires'];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 35.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index),
        ),
      ),
    );
  }

  Widget buildCategories(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kWhiteColor : kIconColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20 / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index ? kYellowColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
