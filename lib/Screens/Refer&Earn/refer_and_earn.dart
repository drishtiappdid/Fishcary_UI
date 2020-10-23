
import 'package:fishcary_app/Screens/Refer&Earn/components/body.dart';
import 'package:fishcary_app/constants.dart';
import 'package:flutter/material.dart';

class ReferAndEarn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Refer & Earn"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
