import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/resources/widgets/widgets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen1.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen2.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen3.dart';
import 'package:medo_app/utils/routes/routes_names.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../resources/widgets/ThemeElevatedbtn.dart';

// Page view

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  int currentpage = 0;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
                allowImplicitScrolling: true,
                controller: _controller,
                // ignore: sort_child_properties_last
                children: [
                  IntroScreen1(),
                  IntroScreen2(),
                  IntroScreen3(),
                ],
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                physics: BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentpage = index;
                  });
                }),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 500.h),
                width: 200.w,
                height: 50.h,
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotHeight: 13.h,
                    dotWidth: 13.w,
                    activeDotColor: colors.Logobg,
                    spacing: 10.w,
                  ),
                ),
              ),
            ),
            NextBtn(currentpage: currentpage, controller: _controller),
          ],
        ),
      ),
    );
  }
}

class NextBtn extends StatelessWidget {
  const NextBtn({
    super.key,
    required this.currentpage,
    required PageController controller,
  }) : _controller = controller;

  final int currentpage;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          margin: EdgeInsets.only(bottom: 60.h),
          child: ThemeElevatedButton(
            text: currentpage == 2 ? 'Get Started' : 'Next',
            ontap: () {
              if (currentpage == 2) {
                Navigator.pushReplacementNamed(context, MyRoutes.SigninRoute);
              } else {
                _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              }
            },
          )),
    );
  }
}
