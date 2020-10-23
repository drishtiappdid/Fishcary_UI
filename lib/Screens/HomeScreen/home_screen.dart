import 'package:fishcary_app/Screens/HomeScreen/components/body.dart';
import 'package:fishcary_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 3;

  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: SvgPicture.asset("assets/icons/anglerfish.svg"),
            ),
            ListTile(
              leading: Icon(Icons.home, color: kPrimaryColor),
              title: Text("Home"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_wallet, color: kPrimaryColor),
              title: Text("Wallet"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              leading: Icon(Icons.star, color: kPrimaryColor),
              title: Text("Refer & Earn"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: kPrimaryColor),
              title: Text("Profile"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            // ExpansionTile()
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: SizedBox(
        height: 62,
        child: JumpingTabBar(
          onChangeTab: onChangeTab,
          backgroundColor: Colors.transparent,
          circleGradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blue,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          items: [
            TabItemIcon(
              buildWidget: (_, color) => Container(
                child: Icon(Icons.shopping_cart),
              ),
              curveColor: kPrimaryColor,
            ),
            TabItemIcon(curveColor: kPrimaryColor, iconData: Icons.healing),
            TabItemIcon(
              iconData: Icons.location_on,
              curveColor: kPrimaryColor,
            ),
            TabItemIcon(
              curveColor: kPrimaryColor,
              buildWidget: (_, color) => Stack(
                children: <Widget>[
                  new Icon(
                    Icons.notifications,
                  ),
                ],
              ),
            ),
            TabItemIcon(
                curveColor: kPrimaryColor,
                iconData: Icons.supervised_user_circle),
          ],
          selectedIndex: selectedIndex,
        ),
      ),
    );
  }
}
