import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wheels/src/models/Product.dart';
import 'package:wheels/src/screens/details/widgets/full_screen_carousel.dart';
import 'package:wheels/src/utils/constants.dart';

class Carousel extends StatefulWidget {
  Carousel({this.product});

  final Product product;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _selectedImage = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                  height: 220.0,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _selectedImage = index;
                    });
                  }),
              items: widget.product.images.map((item) {
                int index = widget.product.images.indexOf(item);
                return Hero(
                  tag: widget.product.name,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullscreenCarousel(
                            product: widget.product,
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        height: 220.0,
                        width: size.width * 0.9,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ...Iterable<int>.generate(widget.product.images.length).map(
                    (int pageIndex) => buildSmallPreview(pageIndex),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        _controller.animateToPage(index);
      },
      child: Container(
        margin: EdgeInsets.only(right: 15.0),
        height: 48.0,
        width: 48.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: _selectedImage == index ? kOrangeColor : Colors.transparent,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            widget.product.images[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
