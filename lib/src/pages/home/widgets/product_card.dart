import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/screens/details/details_screen.dart';
import 'package:wheels/src/utils/constants.dart';

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
                  builder: (context) => DetailsScreen(product: product)),
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
                  flex: 3,
                  child: Container(
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
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              product.name,
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Text(
                            "${product.price.toString()} €",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0,
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 10.0,
          left: 10.0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: kWhiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(
                  Icons.favorite_border,
                  color: kBlackColor,
                  size: 20.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
