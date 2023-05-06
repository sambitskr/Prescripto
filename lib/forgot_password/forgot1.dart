import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/quickalert.dart';

class ForgotPassword1 extends StatefulWidget {
  const ForgotPassword1({super.key});

  @override //Start
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

//Parameters editable
class _ForgotPassword1State extends State<ForgotPassword1> {
  void showalert() {
    QuickAlert.show(
      context: context,
      title: "Done",
      titleColor: Colors.black,
      backgroundColor: Colors.white,
      text: "An OTP has been sent to your Email.",
      textColor: Colors.black,
      type: QuickAlertType.success,
    );
  }

  @override
  //building widget
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    color: Colors.black,
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

          //Email text fill
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

          //Next button(to be added with next page)
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                showalert();
              },
              child: const Text('Next'))
        ],
      ),
    );
  }
}
