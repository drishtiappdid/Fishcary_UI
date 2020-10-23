import 'package:flutter/material.dart';

import '../../../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          GestureDetector(
            onTap: press,
            child: Text(
              "See More",
              style: TextStyle(
                fontSize: 16,
                color: kSecondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
