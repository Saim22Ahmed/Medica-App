import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/DoctorModel.dart';
import '../../resources/pics.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.currentdoctor,
    required this.ItemClickedHandler,
  });

  final Item currentdoctor;
  final Function ItemClickedHandler;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.w),
      child: InkWell(
        onTap: () {
          ItemClickedHandler();
        },
        child: Card(
          elevation: 0.3,
          shadowColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Transform.scale(
                      scale: 1,
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
                  child: Text(
                    currentdoctor.desc,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5.sp,
                    ),
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
                      onTap: () {},
                      // onTap: () {
                      //   istap = !istap;
                      //   setState(() {});
                      // },
                      child: Image(
                        image: MyPics.ufblueheart,
                        fit: BoxFit.cover,
                        height: 25.h,
                        width: 25.w,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
