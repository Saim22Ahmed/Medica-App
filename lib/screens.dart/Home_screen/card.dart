import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:medo_app/screens.dart/Home_screen/checkbutton.dart';

class Cards extends StatefulWidget {
  const Cards(
      {super.key,
      required this.title,
      required this.desc1,
      required this.desc2,
      required this.desc3,
      required this.image,
      required this.btntitle});

  final String title;
  final String desc1;
  final String desc2;
  final String desc3;
  final Image image;
  final String btntitle;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 5,
          shadowColor: Colors.blue,
          color: colors.Logobg,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image:
                    DecorationImage(image: MyPics.bluebg2, fit: BoxFit.cover)),
            width: double.infinity,
            height: 200.h,
            child: Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(25)),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: widget.image,
                    ),
                  ),
                  Positioned(
                    top: 24.h,
                    left: 16.w,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 65,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.desc1,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              widget.desc2,
                              style: TextStyle(
                                height: 1.h,
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Text(
                              widget.desc3,
                              style: TextStyle(
                                height: 1.3.h,
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            CheckNowbtn(
                              title: widget.btntitle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
