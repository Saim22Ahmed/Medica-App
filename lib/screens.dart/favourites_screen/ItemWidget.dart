import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medo_app/models/DoctorModel.dart';
import 'package:medo_app/Provider/Favourite_Provider.dart';
import 'package:medo_app/resources/pics.dart';
import 'package:provider/provider.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget(
      {super.key,
      required this.item,
      required this.ontap,
      required this.image});
  final Item item;
  final void Function()? ontap;
  final ImageProvider<Object> image;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  bool istap = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0.w),
      child: Card(
        elevation: 0.5,
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
                      image: widget.item.image,
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
                  widget.item.name,
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
                  widget.item.desc,
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
                      widget.item.reviews,
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
                    onTap: widget.ontap,
                    // onTap: () {
                    //   istap = !istap;
                    //   setState(() {});
                    // },
                    child: Image(
                      image: widget.image,
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
    );
  }
}
