import 'package:flutter/material.dart';
import 'package:prescripto/registar.dart';
import 'package:prescripto/splash.dart';
import 'package:prescripto/user_interface/profile.dart';
import 'package:prescripto/user_interface/settings.dart';

import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      routes: {
        'register': (context) => const MyRegister(),
        'login': (context) => const MyLogin(),
      },
    ),
  );
}
