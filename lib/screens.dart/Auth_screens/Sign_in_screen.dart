import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/resources/widgets/widgets.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen3.dart';
import 'package:medo_app/utils/routes/routes_names.dart';

import '../../resources/widgets/ThemeElevatedbtn.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _image = MyPics.SigninImage;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    precacheImage(_image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 320.w,
                height: 280.h,
                image: _image,
                // image: MyPics.SigninImage,
                fit: BoxFit.cover,
              ),
              // Image.asset(
              //   'assets/images/signup3.png',
              //   scale: 8,
              //   fit: BoxFit.cover,
              // ),
              Text(
                "Let's you in",
                style: TextStyle(
                  // backgroundColor: colors.Logobg,
                  fontSize: 45.sp,
                  height: 1.h,
                  fontFamily: GoogleFonts.mukta().fontFamily,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SigninButton(
                title: 'Continue with Facebook',
                border: Border.all(color: Colors.grey, width: 0.3.w),
                logo: Logos.facebook_f,
              ),
              SigninButton(
                title: 'Continue with Google',
                border: Border.all(color: Colors.grey, width: 0.3.w),
                logo: Logos.google,
              ),
              SigninButton(
                title: 'Continue with Apple',
                border: Border.all(color: Colors.grey, width: 0.3.w),
                logo: Logos.apple,
              ),
              SizedBox(
                height: 16.h,
              ),
              Center(
                child: Text(
                  'or',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              ThemeElevatedButton(
                ontap: () {
                  Navigator.pushNamed(context, MyRoutes.newaccRoute);
                },
                text: 'Sign in',
                width: 360.w,
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: colors.Logobg,
                          fontSize: 18.5.sp,
                          fontWeight: FontWeight.w600),
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
