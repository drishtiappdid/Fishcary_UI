import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    this.hintText,
    this.svgSrc,
  }) : super(key: key);

  final String hintText, svgSrc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 45,
        width: 205,
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: SvgPicture.asset(svgSrc),
            ),
          ),
        ),
      ),
    );
  }
}
