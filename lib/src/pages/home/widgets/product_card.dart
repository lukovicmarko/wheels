import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/utils/constants.dart';

class ProductCard extends StatelessWidget {
  ProductCard({this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        // color: kSeconaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
            child: Image.network(
              product.images[0],
            ),
          ),
          Text(
            product.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
