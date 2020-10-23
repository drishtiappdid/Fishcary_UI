import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  ImageList({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  List images = [
    {
      "image": "assets/images/Egg.jpg",
    },
    {
      "image": "assets/images/Fish.png",
    },
    {
      "image": "assets/images/Seafood.jpg",
    },
    {
      "image": "assets/images/Egg.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(images[index]["image"], fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
