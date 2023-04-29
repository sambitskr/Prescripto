import 'package:flutter/material.dart';
import 'package:prescripto/about_us.dart';
import 'package:prescripto/contact_us.dart';
import 'package:prescripto/user_interface/settings.dart';
import 'package:prescripto/user_interface/upcoming_appoinments.dart';
import 'package:prescripto/user_interface/util/category.dart';
import 'package:prescripto/user_interface/util/doctor_list.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;

  final screens = [
    HomePage(),
    ContactUsPage(),
    AboutUsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
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
    ];

    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Sambit',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('images/Profile.jpg', height: 50),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: 'Search'),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Category(
                        iconImagePath: 'images/tooth.png',
                        categoryName: 'Dentist'),
                    Category(
                      iconImagePath: 'images/surgeon.png',
                      categoryName: 'Surgeon',
                    ),
                    Category(
                        iconImagePath: 'images/medicine.png',
                        categoryName: 'Medicine'),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Doctor list',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorList(
                      doctorImagePath: 'images/doctor1.jpg',
                      rating: '4.9',
                      doctorName: 'Dr. Partha Bhowmick',
                      doctorprofession: 'Therapist',
                    ),
                    DoctorList(
                      doctorImagePath: 'images/doctor2.jpg',
                      rating: '4.0',
                      doctorName: 'Dr. Tapanjyoti Banerjee',
                      doctorprofession: 'Surgeon',
                    ),
                    DoctorList(
                      doctorImagePath: 'images/doctor3.png',
                      rating: '3.8',
                      doctorName: 'Dr. Manatash Panja',
                      doctorprofession: 'Child specialist',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Upcoming Appoinments',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 220,
                  child: ListView(
                    children: [
                      Column(
                        children: const [
                          UpcomeAppoinList(
                              imagePath: 'images/doctor2.jpg',
                              doctorName: 'Dr. Tapanjyoti Banerjee',
                              dateTime: 'Sun, Jun 8, 9:00AM to 10:00AM'),
                          UpcomeAppoinList(
                              imagePath: 'images/doctor2.jpg',
                              doctorName: 'Dr. Tapanjyoti Banerjee',
                              dateTime: 'Sun, Jun 8, 9:00AM to 10:00AM'),
                          UpcomeAppoinList(
                              imagePath: 'images/doctor2.jpg',
                              doctorName: 'Dr. Tapanjyoti Banerjee',
                              dateTime: 'Sun, Jun 8, 9:00AM to 10:00AM'),
                          UpcomeAppoinList(
                              imagePath: 'images/doctor2.jpg',
                              doctorName: 'Dr. Tapanjyoti Banerjee',
                              dateTime: 'Sun, Jun 8, 9:00AM to 10:00AM'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedindex,
        backgroundColor: Colors.grey,
        color: Colors.green.shade100,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() => selectedindex = index);
        },
        items: items,
      ),
    );
  }
}
