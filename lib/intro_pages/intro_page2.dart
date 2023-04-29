import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 400,
            child: Lottie.network(
                'https://assets1.lottiefiles.com/packages/lf20_T9jCikauOc.json'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            '"Messing up too many prescriptions from\n                     different doctors?"',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
