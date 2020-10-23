import 'package:fishcary_app/Screens/HomeScreen/components/carousel.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/categories.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/home_header.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/image_list.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/popular_products_list.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/refer_and_earn_banner.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/section_title.dart';
import 'package:fishcary_app/Screens/Refer&Earn/refer_and_earn.dart';
import 'package:flutter/material.dart';

List images = [
  {
    "image": "assets/images/Seafood.jpg",
  },
  {
    "image": "assets/images/Egg.jpg",
  },
  {
    "image": "assets/images/Fish.png",
  },
  {
    "image": "assets/images/Meat.jpg",
  },
];

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            HomeHeader(press: () {
              Scaffold.of(context).openDrawer();
            }),
            SizedBox(height: 10),
            Categories(),
            SizedBox(height: 15),
            Carousel(),
            SizedBox(height: 15),
            ReferAndEarnBanner(press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReferAndEarn()),
              );
            }),
            SizedBox(height: 10),
            ImageList(),
            SizedBox(height: 10),
            SectionTitle(title: "Popular Products", press: () {}),
            PopularProduts(),
            SizedBox(height: 0),
          ],
        ),
      ),
    );
  }
}
