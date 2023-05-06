import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:prescripto/contact_us.dart';
import 'package:prescripto/user_interface/profile.dart';
import 'package:prescripto/user_interface/settings.dart';
import 'package:prescripto/user_interface/util/home_page.dart';

import '../about_us.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int selectedindex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    HomePage(),
    ContactUsPage(),
    AboutUsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[selectedindex],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: [
            Image.asset(
              'images/home.png',
              height: 30,
            ),
            Image.asset(
              'images/prescription.png',
              height: 30,
            ),
            Image.asset(
              'images/testresult.png',
              height: 30,
            ),
            Image.asset(
              'images/settings.png',
              height: 30,
            ),
          ],
          backgroundColor: Colors.white,
          color: Colors.green.shade200,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
          },
          letIndexChange: (index) => true,
        ));
  }
}
