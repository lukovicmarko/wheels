import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/utils/constants.dart';

class ProductDetials extends StatefulWidget {
  ProductDetials({this.product});

  final Product product;

  @override
  _ProductDetialsState createState() => _ProductDetialsState();
}

class _ProductDetialsState extends State<ProductDetials> {
  bool showMoreText = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.product.name,
            softWrap: true,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
              margin: EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Text(
                "${widget.product.price.toString()} €",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: kOrangeColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Text(
              widget.product.description,
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                showMoreText = !showMoreText;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(
                children: [
                  Text(
                    showMoreText ? "" : "Show more",
                    style: TextStyle(color: kOrangeColor),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  showMoreText
                      ? Container()
                      : Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: kOrangeColor,
                        )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
