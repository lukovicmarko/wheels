import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/screens/details/widgets/carousel.dart';
import 'package:wheels/src/screens/details/widgets/product_detials.dart';
import 'package:wheels/src/utils/constants.dart';
import 'package:wheels/src/widgets/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        "assets/icons/left-arrow.svg",
        () => Navigator.of(context).pop(),
        Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Carousel(product: product),
            ProductDetials(product: product),
          ],
        ),
      ),
    );
  }
}
