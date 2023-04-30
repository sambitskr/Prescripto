import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Profile',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 16.0),
              const CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/Profile.jpg'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Sambit Sarkar',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Patient',
                style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
              ),
              SizedBox(height: 16.0),
              Divider(),
              SizedBox(height: 16.0),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('skrsambit@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
                subtitle: Text('9477110622'),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Location'),
                subtitle: Text('82/A Shakespeare Sarani'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
