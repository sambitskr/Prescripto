import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      ),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.grey,
      //   color: Colors.green.shade100,
      //   animationDuration: const Duration(milliseconds: 400),
      //   items: [
      //     Image.asset(
      //       'images/home.png',
      //       height: 30,
      //     ),
      //     Image.asset(
      //       'images/prescription.png',
      //       height: 30,
      //     ),
      //     Image.asset(
      //       'images/testresult.png',
      //       height: 30,
      //     ),
      //     Image.asset(
      //       'images/settings.png',
      //       height: 30,
      //     ),
      //   ],
      // ),
    );
  }
}
