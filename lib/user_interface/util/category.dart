import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final iconImagePath;
  // ignore: prefer_typing_uninitialized_variables
  final categoryName;

  const Category(
      {super.key, required this.iconImagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green[200],
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
