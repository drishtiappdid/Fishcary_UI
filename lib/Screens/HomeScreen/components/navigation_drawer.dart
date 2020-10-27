import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(

            child:Image.asset("assets/images/logo1.png",height: 150,width: 150,),
          ),
          ListTile(
            leading: Icon(Icons.home, color: kPrimaryColor),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: kPrimaryColor),
            title: Text(
              "Wallet",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.group, color: kPrimaryColor),
            title: Text(
              "Refer & Earn",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle, color: kPrimaryColor),
            title: Text(
              "Profile",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.star, color: kPrimaryColor),
            title: Text(
              "Rate Us",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.more, color: kPrimaryColor),
            title: Text(
              "More",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.policy_rounded, color: kPrimaryColor),
            title: Text(
              "License & Policy",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.comment, color: kPrimaryColor),
            title: Text(
              "FAQ's",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          ListTile(
            leading: Icon(Icons.support, color: kPrimaryColor),
            title: Text(
              "Support",
              style: TextStyle(fontSize: 12),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
          // ExpansionTile()
        ],
      ),
    );
  }
}
