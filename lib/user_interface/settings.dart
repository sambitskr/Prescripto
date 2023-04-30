
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Notifications'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: false,
              onChanged: (bool value) {},
            ),
          ),
          ListTile(
            title: const Text('Language'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: const Text('Terms of Use'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: const Text('Contact Us'),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            title: const Text('Logout'),
            trailing: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
