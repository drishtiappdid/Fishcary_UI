import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  Carousel({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  List images = [
    {
      "image": "assets/images/strawberry.jpg",
    },
    {
      "image": "assets/images/lemon.jpg",
    },
    {
      "image": "assets/images/strawberry.jpg",
    },
    {
      "image": "assets/images/lemon.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        autoPlay: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 0.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(images[0]["image"])),
            );
          },
        );
      }).toList(),
    );
  }
}

// class VerticalSliderDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Vertical sliding carousel demo')),
//       body: Container(
//           child: CarouselSlider(
//             options: CarouselOptions(
//               aspectRatio: 2.0,
//               enlargeCenterPage: true,
//               scrollDirection: Axis.vertical,
//               autoPlay: true,
//             ),
//             items: images,
//           )
//       ),
//     );
//   }
// }
