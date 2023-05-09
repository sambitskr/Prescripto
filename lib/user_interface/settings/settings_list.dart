import 'package:flutter/material.dart';

class settingsList extends StatelessWidget {
  final String tileName;

  const settingsList({required this.tileName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Text(tileName),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 215, 213, 213),
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
