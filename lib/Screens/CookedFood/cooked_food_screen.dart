import 'package:fishcary_app/Screens/CookedFood/components/body.dart';
import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

import '../../constants.dart';

class CookedFoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigationDotBar(
        color: kPrimaryColor,
        items: <BottomNavigationDotBarItem>[
          BottomNavigationDotBarItem(
              icon: Icons.set_meal_rounded, onTap: () {}),
          BottomNavigationDotBarItem(icon: Icons.language, onTap: () {}),
          BottomNavigationDotBarItem(icon: Icons.dashboard, onTap: () {}),
          BottomNavigationDotBarItem(
              icon: Icons.category_rounded, onTap: () {}),
          BottomNavigationDotBarItem(
              icon: Icons.restaurant_menu_rounded,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CookedFoodScreen()),
                );
              }),
        ],
      ),
    );
  }
}
