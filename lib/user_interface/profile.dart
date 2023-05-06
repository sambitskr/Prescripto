import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Profile',
                style: GoogleFonts.aBeeZee(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 30.0),
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
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Edit Profile"),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      backgroundColor: Colors.green),
                ),
              ),
              SizedBox(height: 5),
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
