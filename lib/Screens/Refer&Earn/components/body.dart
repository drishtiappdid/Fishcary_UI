import 'package:fishcary_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Image.asset("assets/images/refer&earn.png"),
        SizedBox(height: 10),
        Text(
          "Your friends are our friends too!",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Your unique referal code is',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 20),
        Container(
          height: 60,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'HJFTHGK'.toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
                GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.copy)),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Know More',
          style: TextStyle(
              color: kPrimaryColor, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.share, color: kPrimaryColor),
            ),
            Container(
              height: 50,
              width: 50,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.copy, color: kPrimaryColor),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.share, color: kPrimaryColor),
            ),
          ],
        )
      ],
    );
  }
}
