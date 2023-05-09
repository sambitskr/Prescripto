import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(48, 203, 0, 0.5),
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
          Text(
            '"Messing up too many prescriptions from\n                     different doctors?"',
            style: GoogleFonts.exo2(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
