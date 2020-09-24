import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheels/src/data/productsData.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/utils/constants.dart';

class FavoriteButton extends StatelessWidget {
  FavoriteButton({this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsData>(context);
    return GestureDetector(
      onTap: () {
        products.toggleFavorite(product);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: kWhiteColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(3.0),
          child: product.isFavorite
              ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 25.0,
                )
              : Icon(
                  Icons.favorite_border,
                  color: kBlackColor,
                  size: 25.0,
                ),
        ),
      ),
    );
  }
}
