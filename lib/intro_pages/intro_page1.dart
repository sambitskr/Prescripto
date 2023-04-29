import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            child: Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_gaU1299nwI.json'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            '"Having difficulties in understanding \n                prescription labels?"',
            style: TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
