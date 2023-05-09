import 'package:flutter/material.dart';
import 'package:prescripto/user_interface/settings/settings_list.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
        centerTitle: true,
        toolbarHeight: 200,
      ),
      body: ListView(
        children: [
          settingsList(),
          settingsList(),
          settingsList(),
          settingsList(),
        ],
      ),
    );
  }
}
