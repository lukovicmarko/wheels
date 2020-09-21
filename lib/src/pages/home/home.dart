import 'package:flutter/material.dart';
import 'package:wheels/src/pages/home/widgets/filter.dart';
import 'package:wheels/src/pages/home/widgets/header.dart';
import 'package:wheels/src/pages/home/widgets/products_view.dart';
import 'package:wheels/src/pages/home/widgets/search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Header(size: size),
        ProductsView(),
      ],
    );
  }
}
