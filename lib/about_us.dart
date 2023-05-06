import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/black.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('About us'),
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/aboutus.jpg'),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    'Gone are those days when one needed to search hours and hours to find that ONE prescription for their medical services. We the team of Prescripto want our customers to feel at ease with their prescriptions and other medical repports. Our top priority is to provide our customers an easy access to their medical reports anytime and anywhere, with just a click one can access their prescriptions at an ease.',
                    style: GoogleFonts.openSans(color: Colors.black),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(50.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'images/logo_smol.png',
                      height: 170,
                    )),
              ),
              Text(
                'Prescripto',
                style:
                    GoogleFonts.montserrat(fontSize: 30, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                ' --Our Story --',
                style: GoogleFonts.kanit(color: Colors.black),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                child: Text(
                  'Prescripto was simply an idea for our college project. Our team members realised that the amount of hassle anyone faces , because carrying and storing prescriptions have always been a tremendous hassle, we thought why not make it easy by just making the whole process online, and thus, it was the birthmark of Prescripto.',
                  style: GoogleFonts.openSans(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
