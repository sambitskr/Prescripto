import 'package:flutter/material.dart';

import 'introduction.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigatetologin();
  }

  navigatetologin() async {
    await Future.delayed(
      const Duration(milliseconds: 3000),
      () {},
    );
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const IntroductionPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'images/logo_smol_trans.png',
                  height: 150,
                )),
            const SizedBox(height: 10),
            const Text(
              'Prescripto',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
