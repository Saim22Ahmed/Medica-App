import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, MyRoutes.SplashScr2Route);
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            // stops: [0.2, 0.6],
            colors: [
              Color.fromARGB(255, 113, 191, 243),
              // Color(0xff15AAFF),
              Color.fromARGB(255, 219, 222, 240),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    // child: Icon(
                    //   Icons.medication_rounded,
                    //   size: 35,
                    // ),
                    backgroundImage:
                        AssetImage('assets/images/medo_logo_white.png'),
                    backgroundColor: colors.Logobg,
                    radius: 25,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Medica',
                    style: TextStyle(
                      fontFamily: 'Mukta',
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
