import 'package:fishcary_app/Screens/FoodDescriptionScreen/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class FoodDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: SizedBox(
        height: 150,
        child: Card(
          elevation: 30,
          shadowColor: kPrimaryColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      '₹150',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kPrimaryColor),
                          shape: BoxShape.circle),
                      child: Icon(Icons.add, color: kPrimaryColor),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '01',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: kPrimaryColor),
                          shape: BoxShape.circle),
                      child: Icon(Icons.remove, color: kPrimaryColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 50,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [kPrimaryColor, kLightBlueColor]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
