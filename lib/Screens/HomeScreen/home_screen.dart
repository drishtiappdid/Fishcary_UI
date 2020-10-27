import 'package:fishcary_app/Screens/CookedFood/cooked_food_screen.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/body.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/navigation_drawer.dart';
import 'package:fishcary_app/Screens/SocialMedia/social_media_screen.dart';
import 'package:fishcary_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 3;

  //
  // void onChangeTab(int index) {
  //   selectedIndex = index;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      drawer: NavigationDrawer(),
      body: Body(),
      bottomNavigationBar: BottomNavigationDotBar(
        color: kPrimaryColor,
        items: <BottomNavigationDotBarItem>[
          //TODO: change the icons in this page
          BottomNavigationDotBarItem(
              icon: Icons.set_meal_rounded, onTap: () {}),
          BottomNavigationDotBarItem(icon: Icons.language, onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => SocialMediaScreen()),
            );
          }),
          BottomNavigationDotBarItem(icon: Icons.dashboard, onTap: () {}),
          BottomNavigationDotBarItem(
              icon: Icons.category_rounded, onTap: () {}),
          BottomNavigationDotBarItem(
              icon: Icons.restaurant_menu_rounded,
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => CookedFoodScreen()),
                );
              }),
        ],
      ),
    );
  }
}
