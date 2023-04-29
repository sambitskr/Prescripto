import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorprofession;

  // ignore: use_key_in_widget_constructors
  const DoctorList(
      {required this.doctorImagePath,
      required this.rating,
      required this.doctorName,
      required this.doctorprofession});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green[100],
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(doctorImagePath, height: 100)),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              doctorName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(doctorprofession),
          ],
        ),
      ),
    );
  }
}
