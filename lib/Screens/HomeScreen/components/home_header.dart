import 'package:fishcary_app/Screens/HomeScreen/components/icon_btn_with_counter.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key, this.press,
  }) : super(key: key);

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: SvgPicture.asset("assets/icons/anglerfish.svg"),
            ),
          ),
          SizedBox(width: 5),
          SearchField(
              hintText: "Search", svgSrc: "assets/icons/Search Icon.svg"),
          SizedBox(width: 5),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          ),
          SizedBox(width: 5),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
