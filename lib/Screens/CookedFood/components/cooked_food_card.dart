import 'package:fishcary_app/Screens/FoodDescriptionScreen/cooked_food_description_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CookedFoodCard extends StatelessWidget {
  const CookedFoodCard({
    Key key,
    this.dishName,
    this.category,
    this.price,
    this.strikedPrice,
  }) : super(key: key);

  final String dishName, category;
  final int price, strikedPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => FoodDescriptionScreen(),
            ),
          );
        },
        child: Card(
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Image.asset("assets/images/Seafood.jpg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mango Alphonso - Ratnagiri',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '(Small Size)',
                      style: TextStyle(fontSize: 12, color: kSecondaryColor),
                    ),
                    Text(
                      '1kg',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Text(
                          '₹150/-',
                          style: TextStyle(
                            fontSize: 15,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '₹200/-',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
