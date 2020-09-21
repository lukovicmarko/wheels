import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/utils/constants.dart';

class Carousel extends StatefulWidget {
  Carousel({this.product});
  final Product product;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 220.0,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: widget.product.images
                  .map((item) => Hero(
                        tag: widget.product.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            height: 220.0,
                            width: size.width * 0.8,
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.product.images.map((url) {
                int index = widget.product.images.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? kWhiteColor : kIconColor,
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
