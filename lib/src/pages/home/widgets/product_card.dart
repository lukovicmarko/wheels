import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/screens/details/details_screen.dart';
import 'package:wheels/src/utils/constants.dart';
import 'package:wheels/src/widgets/favorite_button.dart';
import 'package:wheels/src/widgets/location.dart';
import 'package:wheels/src/widgets/productPrice.dart';
import 'package:wheels/src/widgets/product_title.dart';

class ProductCard extends StatelessWidget {
  ProductCard({this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: kPrimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Hero(
                      tag: product.name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        child: Image.network(
                          product.images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: ProductTitle(
                            product: product,
                            fontSize: 18.0,
                            maxLines: 1,
                          ),
                        ),
                        Location()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 6.0,
          left: 10.0,
          child: FavoriteButton(product: product),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 205, 0, 0.6),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
            child: ProductPrice(
              product: product,
              color: kWhiteColor,
              fontSize: 19.0,
            ),
          ),
        ),
      ],
    );
  }
}
