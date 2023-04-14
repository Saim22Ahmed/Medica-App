import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/resources/widgets/widgets.dart';
import 'package:medo_app/screens.dart/Home_screen/bottombar.dart';
import 'package:medo_app/screens.dart/Home_screen/buttons.dart';
import 'package:medo_app/screens.dart/Home_screen/card.dart';
import 'package:medo_app/screens.dart/Home_screen/list_view_item.dart';
import 'package:medo_app/utils/routes/routes_names.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'TopDocsBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isfilled = false;
  bool isnotify = false;
  final _pagecontroller = PageController();
  int _currentindex = 0;
  int _selectedindex = 0;
  bool isAnimationRunning = true;
  bool isScrolling = false;
  late Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (isAnimationRunning) {
      _timer = Timer.periodic(Duration(seconds: 6), (Timer timer) {
        if (_currentindex < 2) {
          _currentindex++;
        } else {
          _currentindex = 0;
        }
        _pagecontroller.animateToPage(_currentindex,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      });
    } else {
      _timer.cancel();
    }
  }

  @override
  void dispose() {
    print('disposed');
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
    _pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          appBar: homeAppBar(context),
          bottomNavigationBar: BottomNavBar(),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: InkWell(
              onTap: () {
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    SearchField(),
                    SizedBox(
                      height: 18.h,
                    ),
                    Container(
                      height: 220.h,
                      // color: Colors.blue,
                      child: CardPageView(),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Doctor Speciality',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: colors.Logobg,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.0),
                      child: Row(
                        children: [
                          CupButton(
                            image: MyPics.user,
                            title: 'General..',
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          CupButton(
                            image: MyPics.teeth,
                            title: 'Dentist',
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          CupButton(
                            image: MyPics.eye,
                            title: 'Opthal..',
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          CupButton(
                            image: MyPics.nutrition,
                            title: 'Nutrition..',
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.0),
                      child: Row(
                        children: [
                          CupButton(
                            image: MyPics.brain3,
                            title: 'Neurolo..',
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          CupButton(
                            image: MyPics.infant,
                            title: 'Pediatric',
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          CupButton(
                            image: MyPics.radiology,
                            title: 'Radiolo..',
                          ),
                          SizedBox(
                            width: 28.w,
                          ),
                          CupButton(
                            image: MyPics.more,
                            title: 'More',
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Top Doctors',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: colors.Logobg,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TopDocsBar(),
                    SizedBox(
                      height: 30.h,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container CardPageView() {
    return Container(
      child: Listener(
        onPointerDown: (_) {
          setState(() {
            _timer.cancel();
            isAnimationRunning = false;
          });
        },
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                _currentindex = index;
              },
              allowImplicitScrolling: true,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              controller: _pagecontroller,
              children: [
                Cards(
                  title: 'Medical Checks!',
                  desc1: 'Check your health condition',
                  desc2: 'regularly to minimize the ',
                  desc3: 'incidence of disease in future.',
                  image: Image(image: MyPics.asiandoc),
                  btntitle: 'Check Now',
                ),
                Cards(
                  title: 'Online 24/7!',
                  desc1: 'Get engage with us for your ',
                  desc2: 'medical needs at anytime & ',
                  desc3: 'simplify your healthcare journey.',
                  image: Image(image: MyPics.blackdoc),
                  btntitle: 'Check Now',
                ),
                Cards(
                  title: 'Live Sessions!',
                  desc1: 'Join our live sessions to ',
                  desc2: 'connect with our experts',
                  desc3: 'for your health issues.',
                  image: Image(image: MyPics.shedoc),
                  btntitle: 'Learn More',
                )
              ],
            ),
            Positioned(
              top: 190.h,
              left: 0.w,
              right: 50.w,
              child: Container(
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                    controller: _pagecontroller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      spacing: 5,
                      dotHeight: 6.h,
                      dotWidth: 6.w,
                      dotColor: Colors.grey.shade300,
                      activeDotColor: Colors.grey.shade300,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      toolbarHeight: 90.h,
      elevation: 0,
      titleSpacing: 20.w,
      // toolbarOpacity: 0.2,
      title: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: TextStyle(
                  fontFamily: GoogleFonts.comfortaa().fontFamily,
                  fontSize: 16.sp,
                  color: Colors.black,
                  height: 1.8.h,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                'Saim Ahmed',
                style: TextStyle(
                  height: 1.6.h,
                  fontFamily: GoogleFonts.mukta().fontFamily,
                  fontSize: 26.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),

      leading: Padding(
        padding: EdgeInsets.only(left: 15.w),
        child: CircleAvatar(
          backgroundImage: MyPics.AccountImage,
          backgroundColor: Colors.transparent,
        ),
      ),
      leadingWidth: 75.w,

      actions: [
        Row(
          children: [
            InkWell(
              onTap: () async {
                setState(() {
                  isnotify = !isnotify;
                });
                await Navigator.pushNamed(context, MyRoutes.NotificationsRoute);
                setState(() {
                  isnotify = !isnotify;
                });
              },
              child: Image(
                image: isnotify ? MyPics.filledNotiicon : MyPics.Notiicon,
                width: 30.w,
                height: 30.h,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Padding(
              padding: EdgeInsets.only(right: 14.0.w),
              child: InkWell(
                onTap: () async {
                  setState(() {
                    isfilled = !isfilled;
                  });
                  await Navigator.pushNamed(context, MyRoutes.FavouritesRoute);
                  setState(() {
                    isfilled = !isfilled;
                  });
                },
                child: Image(
                  image: isfilled ? MyPics.filledHearticon : MyPics.Hearticon,
                  width: 30.w,
                  height: 30.h,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool isFocus = false;
  final search_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 390.w,
        height: 71.h,
        child: Padding(
          padding: EdgeInsets.all(2.0.w),
          child: TextFormField(
            onTap: () {
              setState(() {
                isFocus = false;
              });
            },
            controller: search_controller,
            maxLines: 1,
            // keyboardType: TextInputType.text,
            style: TextStyle(
              fontSize: 20.sp,
            ),
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(
                fontSize: 20.sp,
                color: Color.fromARGB(190, 158, 158, 158),
              ),
              prefixIcon: Padding(
                padding:
                    EdgeInsets.only(left: 12.0.w, right: 12.0.w, bottom: 7.h),
                child: Icon(EvaIcons.search_outline,
                    size: 30.w.h,
                    color: isFocus
                        ? colors.Logobg
                        : Color.fromARGB(144, 158, 158, 158)),
              ),
              suffixIcon: Icon(
                OctIcons.filter_16,
                color: colors.Logobg,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25.r),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.r),
                  borderSide: BorderSide(
                    color: colors.Logobg,
                    width: 2.w,
                  )),
              filled: true,
              fillColor: Color.fromARGB(104, 219, 214, 214),
            ),
          ),
        ),
      ),
    );
  }
}
