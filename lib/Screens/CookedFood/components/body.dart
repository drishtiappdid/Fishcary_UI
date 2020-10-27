import 'package:fishcary_app/Screens/CookedFood/components/cooked_food_card.dart';
import 'package:fishcary_app/Screens/HomeScreen/components/home_header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            //TODO: replace menu icon with back icon

            HomeHeader(press: () {
              Scaffold.of(context).openDrawer();
            }),
            SizedBox(height: 10),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
            CookedFoodCard(),
          ],
        ),
      ),
    );
  }
}
