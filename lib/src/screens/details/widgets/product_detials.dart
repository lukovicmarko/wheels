import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/utils/constants.dart';
import 'package:wheels/src/widgets/favorite_button.dart';

class ProductDetials extends StatefulWidget {
  ProductDetials({this.product});

  final Product product;

  @override
  _ProductDetialsState createState() => _ProductDetialsState();
}

class _ProductDetialsState extends State<ProductDetials>
    with TickerProviderStateMixin {
  bool showMoreText = false;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                FavoriteButton(product: widget.product)
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: kOrangeColor,
                      size: 22.0,
                    ),
                    Text(
                      "Kragujevac",
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 19.0,
                        color: kColorGreen,
                      ),
                    ),
                  ],
                ),
                Container(
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
                      color: kYellowColor,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Details',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expandable(
                  collapsed: Text(
                    widget.product.description,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  expanded: Text(
                    widget.product.description,
                    softWrap: true,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: <Widget>[
                      Builder(
                        builder: (context) {
                          var controller = ExpandableController.of(context);
                          return Container(
                            child: AnimatedBuilder(
                              animation: _animationController,
                              builder: (context, child) => GestureDetector(
                                onTap: () {
                                  controller.toggle();
                                  _animationController.isCompleted
                                      ? _animationController.reverse()
                                      : _animationController.forward();
                                },
                                child: Row(
                                  children: [
                                    Text(
                                      _animationController.isCompleted
                                          ? "Show less"
                                          : "Show more",
                                      style: TextStyle(color: kOrangeColor),
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    _animationController.isCompleted
                                        ? Container()
                                        : Icon(
                                            Icons.arrow_forward_ios,
                                            size: 14,
                                            color: kOrangeColor,
                                          )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Text(
              'Contact',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            )
          ],
        ),
      ),
    );
  }
}
