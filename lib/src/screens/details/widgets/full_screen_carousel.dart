import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/utils/constants.dart';

class FullscreenCarousel extends StatelessWidget {
  FullscreenCarousel({this.product, this.index});

  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/close.svg",
              width: 22.0,
              color: kWhiteColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return Container(
            padding: EdgeInsets.only(bottom: 50),
            child: Center(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: height * 0.6,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  initialPage: index,
                ),
                items: product.images
                    .map(
                      (item) => Container(
                        child: Center(
                          child: Image(
                            image: NetworkImage(item),
                            fit: BoxFit.cover,
                            height: height,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
