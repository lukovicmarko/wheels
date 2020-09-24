import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/screens/details/details_screen.dart';
import 'package:wheels/src/utils/constants.dart';
import 'package:wheels/src/widgets/favorite_button.dart';
import 'package:wheels/src/widgets/location.dart';
import 'package:wheels/src/widgets/productPrice.dart';
import 'package:wheels/src/widgets/product_title.dart';

class FavoriteProduct extends StatelessWidget {
  FavoriteProduct({this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return product.isFavorite
        ? GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(product: product),
                ),
              );
            },
            child: Container(
              height: 150.0,
              padding: EdgeInsets.only(left: 10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Hero(
                    tag: product.name,
                    child: Container(
                      width: 160.0,
                      height: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        child: Image.network(
                          product.images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductTitle(
                            product: product,
                            fontSize: 20.0,
                            maxLines: 2,
                          ),
                          Location(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProductPrice(
                                product: product,
                                color: kYellowColor,
                                fontSize: 22.0,
                              ),
                              FavoriteButton(product: product)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container();
  }
}
