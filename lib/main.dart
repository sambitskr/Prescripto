import 'package:flutter/material.dart';
import 'package:prescripto/registar.dart';
import 'package:prescripto/splash.dart';

import 'login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      routes: {
        'register': (context) => const MyRegister(),
        'login': (context) => const MyLogin(),
      },
    ),
  );
}
