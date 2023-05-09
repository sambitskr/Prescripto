import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(15, 146, 0, 0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            child: Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_ng0oaxgb.json'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            '"Confused where your previous \n         prescriptions are?"',
            style: TextStyle(fontSize: 15, color: Colors.black),
          )
        ],
      ),
    );
  }
}
