import 'package:flutter/material.dart';
import 'package:prescripto/about_us.dart';
import 'package:prescripto/account_details.dart';
import 'package:prescripto/contact_us.dart';
import 'package:prescripto/registar.dart';
import 'package:prescripto/splash.dart';
import 'package:prescripto/user_interface/bottomNavBar.dart';
import 'package:prescripto/user_interface/profile.dart';
import 'package:prescripto/user_interface/settings.dart';
import 'package:prescripto/user_interface/util/home_page.dart';

import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountDetails(),
      routes: {
        'register': (context) => const MyRegister(),
        'login': (context) => const MyLogin(),
      },
    ),
  );
}
