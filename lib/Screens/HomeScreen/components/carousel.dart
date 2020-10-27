import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  Carousel({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  List<String> images = [
    "assets/images/fish.jpg",
    "assets/images/unnamed.jpg",
    "assets/images/download.jpeg",

    // "assets/images/lemon.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 220,
        enlargeCenterPage: true,
        viewportFraction: 0.96,
        autoPlay: true,
      ),
      items: images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Image.asset(
              i,
              fit: BoxFit.fitWidth,
            );
          },
        );
      }).toList(),
    );
  }
}
