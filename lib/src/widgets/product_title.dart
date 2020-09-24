import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';

class ProductTitle extends StatelessWidget {
  ProductTitle({this.product, this.fontSize, this.maxLines});

  final Product product;
  final double fontSize;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.name,
      softWrap: true,
      maxLines: maxLines,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
