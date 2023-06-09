import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controllers/FavouriteDoctors_controllers.dart';
import '../../models/DoctorModel.dart';
import '../../resources/pics.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    super.key,
    required this.currentdoctor,
    required this.ItemClickedHandler,
    required this.FavIconClickHandler,
    required this.favicon,
  });

  final Item currentdoctor;
  final Function ItemClickedHandler;
  final Function FavIconClickHandler;
  final dynamic favicon;

  // controllers //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 8.w),
      child: InkWell(
        onTap: () {
          ItemClickedHandler();
        },
        child: Card(
          elevation: 0.3,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.r),
          ),
          color: Colors.white,
          child: Container(
            height: 140.h,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 15.h,
                  left: 10.w,
                  child: Transform.scale(
                    scale: 1.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.r),
                      child: Image(
                        image: currentdoctor.image,
                        height: 110.h,
                        width: 108.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 135.w,
                  top: 15.h,
                  child: Text(
                    currentdoctor.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ),
                Positioned(
                  left: 135.w,
                  top: 70.h,
                  child: Row(
                    children: [
                      Text(
                        currentdoctor.category,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5.sp,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                        child: Center(child: Text('|')),
                      ),
                      Text(
                        currentdoctor.hospital,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 135.w,
                  top: 100.h,
                  child: Row(
                    children: [
                      Image(
                        image: MyPics.ratingstar,
                        height: 17.h,
                        width: 17.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        currentdoctor.rating,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.h,
                      ),
                      Text(
                        currentdoctor.reviews,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0.h, right: 10.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        FavIconClickHandler();
                      },
                      child: Image(
                        image: favicon,
                        fit: BoxFit.cover,
                        height: 25.h,
                        width: 25.w,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
