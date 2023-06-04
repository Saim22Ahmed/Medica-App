import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:medo_app/screens.dart/Appointment_screen/book_apnmt.dart';

import 'package:medo_app/screens.dart/Doc_categoery_screens/docs_category.dart';
import 'package:medo_app/screens.dart/DoctorDetails/doctor_details.dart';
import 'package:medo_app/screens.dart/Doctors_screen/Doctors_screen.dart';
import 'package:medo_app/Provider/Favourite_Provider.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/screens.dart/Doctors_screen/ItemWidget.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/screens.dart/favourites_screen/fav_screen.dart';
import 'package:medo_app/screens.dart/Notification%20screen/notification_screen.dart';
import 'package:medo_app/screens.dart/Auth_screens/Sign_in_screen.dart';
import 'package:medo_app/screens.dart/Auth_screens/newacc_screen.dart';
import 'package:medo_app/screens.dart/Home_screen/home_screen.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen1.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen2.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screen3.dart';
import 'package:medo_app/screens.dart/intro%20screens/intro_screens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medo_app/screens.dart/splash_screens/splash_screen.dart';
import 'package:medo_app/screens.dart/splash_screens/splash_screen_2.dart';
import 'package:medo_app/utils/routes/routes_names.dart';
import 'package:provider/provider.dart';

import 'controllers/review_controller/user_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    precacheImage(MyPics.SigninImage, context);
    // precacheImage(AssetImage('assets/images/Asian_doc.png'), context);
    return ScreenUtilInit(
      designSize: const Size(412, 892),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.mukta().fontFamily,
          ),
          home: BookAppointment(),
          onReady: () {
            Get.find<UserController>().fetchRandomUsers();
          },
          routes: {
            MyRoutes.SplashScr2Route: (context) => SplashScreen2(),
            MyRoutes.IntroRoute: (context) => IntroScreens(),
            MyRoutes.Intro1Route: (context) => IntroScreen1(),
            MyRoutes.Intro2Route: (context) => IntroScreen2(),
            MyRoutes.Intro3Route: (context) => IntroScreen3(),
            MyRoutes.SigninRoute: (context) => SigninScreen(),
            MyRoutes.newaccRoute: (context) => NewAccount(),
            MyRoutes.HomepageRoute: (context) => HomeScreen(),
            MyRoutes.NotificationsRoute: (context) => NotificationScreen(),
            MyRoutes.FavouritesRoute: (context) => Favourites_screen(),
            MyRoutes.DocsCategoryRoute: (context) => DocsCategory(),
            // MyRoutes.DoctorDetailsRoutes: (context) => DoctorDetailsScreen(),
            MyRoutes.DoctorScreenRoutes: (context) => DoctorsScreen(),
          },
        );
      },
    );
  }
}
