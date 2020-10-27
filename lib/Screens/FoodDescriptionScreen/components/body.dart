import 'package:fishcary_app/Screens/HomeScreen/components/carousel.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/home_header.dart';
import 'package:fishcary_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            HomeHeader(),
            SizedBox(height: 5),
            Carousel(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Mango Alphonso - Ratnagiri',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        fontSize: 18,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '₹150/-',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:4.0,top: 4),
                        child: Text(
                          '₹200/-',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                "sed do eiusmod tempor incididunt ut labore et dolore "
                "magna aliqua. Ut enim ad minim veniam, quis nostrud"
                "commodo consequat. Duis aute irure dolor in reprehenderit"
                " laborum.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
