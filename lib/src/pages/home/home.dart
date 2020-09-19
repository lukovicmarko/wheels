import 'package:flutter/material.dart';
import 'package:wheels/src/pages/home/widgets/filter.dart';
import 'package:wheels/src/pages/home/widgets/products_view.dart';
import 'package:wheels/src/pages/home/widgets/search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          Row(
            children: [
              Search(),
              SizedBox(
                width: 15.0,
              ),
              Filter(),
            ],
          ),
          ProductsView(),
        ],
      ),
    );
  }
}
