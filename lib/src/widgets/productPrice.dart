import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';

class ProductPrice extends StatelessWidget {
  ProductPrice({@required this.product, this.fontSize, this.color});

  final Product product;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${product.price.toString()} €",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
