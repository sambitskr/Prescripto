import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 8.0),
              //   child: Container(
              //     margin: EdgeInsets.symmetric(vertical: 50),
              //     child: Row(
              //       children: [
              //         IconButton(
              //           onPressed: () {
              //             Navigator.of(context).pop();
              //           },
              //           icon: const Icon(Icons.arrow_back_ios_new_rounded),
              //         ),
              //         SizedBox(
              //           width: 70,
              //         ),
              //         Text(
              //           'Settings',
              //           style: TextStyle(fontSize: 40),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 50,
              // ),
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
        ),
      ),
    );
  }
}
