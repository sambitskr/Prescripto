import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';

class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({super.key});

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  void showalert() {
    QuickAlert.show(
      context: context,
      title: "Done",
      titleColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 58, 60, 60),
      text: "An OTP has been sent to your Email.",
      textColor: Colors.white,
      type: QuickAlertType.success,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/black.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Login help'),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: 'Find your account\n',
                        style: GoogleFonts.secularOne()),
                    TextSpan(
                        text:
                            'Find your account by giving your email address below',
                        style: GoogleFonts.rubik(fontSize: 14)),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  showalert();
                },
                child: const Text('Next'))
          ],
        ),
      ),
    );
  }
}
