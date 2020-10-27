import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../../../constants.dart';

class ReferAndEarnBanner extends StatelessWidget {
  const ReferAndEarnBanner({
    Key key,
    this.press,
  }) : super(key: key);

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Text(
              "Refer & Earn",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Spacer(),
            // Icon(
            //   Icons.arrow_forward_ios,
            //   color: Colors.white,
            // ),
          ],
        ),
      ),
    );
  }
}
