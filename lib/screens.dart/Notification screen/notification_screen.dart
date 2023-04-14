import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/screens.dart/Notification%20screen/MyListtile.dart';
import 'package:medo_app/screens.dart/Notification%20screen/newbutton.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        leading: InkWell(
          onTap: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(
              OctIcons.arrow_left_24,
              color: Colors.black,
              size: 32.h,
            ),
          ),
        ),
        leadingWidth: 50.w,
        actions: [
          Image(
            image: MyPics.morebw,
            width: 30.w,
            height: 30.h,
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            MyListTile(
              desc:
                  'You have successfully canceled your appointment with Dr Alan Watson on January 24, 2024, 13:00 p.m. 80% of the funds will be returned to your account.',
              title: 'Appointment Cancelled',
              subtitle: 'Today | 15:36 PM',
              icon: Image(
                image: MyPics.cancel,
                height: 50.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
              iconbgcolor: Color(0xffff6077).withOpacity(0.1),
              trailing: Notibtn(),
            ),
            MyListTile(
              desc:
                  "You have successfully changed schedule an appointment with Dr. Alan Watson on December 24, 2024, 13:00 pm. Don't forget to activate your reminder.",
              title: 'Schedule Changed',
              subtitle: 'Yesterday | 09:23 AM',
              icon: Image(
                image: MyPics.calender,
                height: 30.h,
                width: 30.w,
                fit: BoxFit.cover,
              ),
              iconbgcolor: Color(0xff2ccdac).withOpacity(0.1),
              trailing: Notibtn(),
            ),
            MyListTile(
              desc:
                  "You have successfully changed booked an appointment with Dr. Alan Watson on December 24, 2024, 10:00 am. Don't forget to activate your reminder.",
              title: 'Appointment Success!',
              subtitle: '19 Jan, 2023 | 18:35 PM',
              icon: Image(
                image: MyPics.calender1,
                height: 30.h,
                width: 30.w,
                fit: BoxFit.cover,
              ),
              iconbgcolor: Color.fromARGB(255, 77, 124, 218).withOpacity(0.1),
            ),
            MyListTile(
              desc:
                  'You can now make multiple doctoral appountments at once. You can also cancel your appointment.',
              title: 'New Services Available!',
              subtitle: '14 Jan, 2023 | 10:52 PM',
              icon: Image(
                image: MyPics.star,
                height: 35.h,
                width: 35.w,
                fit: BoxFit.cover,
              ),
              iconbgcolor: Color.fromARGB(255, 240, 226, 36).withOpacity(0.15),
            ),
            MyListTile(
              desc:
                  'Your credit card has been successfully linked with Medica. Enjoy our service.',
              title: 'Credit Card Connected!',
              subtitle: '12 Jan, 2023 | 15:38 PM',
              icon: Image(
                image: MyPics.wallet,
                height: 31.h,
                width: 31.w,
                fit: BoxFit.cover,
              ),
              iconbgcolor: Color.fromARGB(255, 77, 124, 218).withOpacity(0.1),
            ),
          ],
        ),
      ),
    );
  }
}
