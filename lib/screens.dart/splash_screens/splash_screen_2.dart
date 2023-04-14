import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, MyRoutes.IntroRoute);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'MUFTA',
                  //   style: GoogleFonts.getFont(
                  //     'Playfair Display',
                  //     fontSize: 40,
                  //     fontWeight: FontWeight.w700,
                  //     color: Color.fromARGB(255, 197, 16, 3),
                  //   ),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: colors.Logobg,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        'Medica!',
                        style: TextStyle(
                          height: 1,
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color: colors.Logobg,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 20),
              // decoration: BoxDecoration(
              //     border: Border.all(color: colors.Logobg, width: 2)),
              child: Image.asset(
                'assets/images/welcome.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                'The best online doctor appointment and\nconsultation app of the century for your\nhealth and medical needs.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
