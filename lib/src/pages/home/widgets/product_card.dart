import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/screens/details/details_screen.dart';
import 'package:wheels/src/utils/constants.dart';

class ProductCard extends StatefulWidget {
  ProductCard({this.product});

  final Product product;

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: widget.product),
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
                  flex: 3,
                  child: Container(
                    child: Hero(
                      tag: widget.product.name,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                        child: Image.network(
                          widget.product.images[0],
                          fit: BoxFit.cover,
                        ),
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
                              widget.product.name,
                              maxLines: 1,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Text(
                            "${widget.product.price.toString()} €",
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
            onTap: () {
              setState(() {
                isActive = !isActive;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: kWhiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.all(3.0),
                child: isActive
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
          ),
        ),
      ],
    );
  }
}
