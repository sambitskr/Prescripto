import 'package:flutter/material.dart';

class UpcomeAppoinList extends StatelessWidget {
  final String imagePath;
  final String doctorName;
  final String dateTime;

  const UpcomeAppoinList(
      {super.key,
      required this.imagePath,
      required this.doctorName,
      required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          //image
          Container(
            height: 55,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(imagePath, height: 100),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                dateTime,
                style: TextStyle(fontSize: 15),
              ),
            ],
          )
        ],
      ),
    );
  }
}
