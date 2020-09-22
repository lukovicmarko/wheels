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
                  flex: 2,
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
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: Text(
                            widget.product.name,
                            maxLines: 1,
                            softWrap: true,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: kOrangeColor,
                              size: 20.0,
                            ),
                            Text(
                              "Kragujevac",
                              maxLines: 1,
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 18.0,
                                color: kColorGreen,
                              ),
                            ),
                          ],
                        )
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
            child: Text(
              "${widget.product.price.toString()} €",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.0,
                color: kWhiteColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
