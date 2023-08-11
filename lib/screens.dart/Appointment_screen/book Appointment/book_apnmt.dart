import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medo_app/resources/colors.dart';
import 'package:medo_app/screens.dart/Appointment_screen/book%20Appointment/Package%20screen/package_screen.dart';

import 'package:medo_app/screens.dart/Appointment_screen/book%20Appointment/time_button.dart';
import 'package:medo_app/screens.dart/favourites_screen/ThemeAppbar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../controllers/calender_controller.dart';
import '../Booking_themebtn.dart';

class BookAppointment extends StatelessWidget {
  BookAppointment({super.key});

  CalenderController calenderController = Get.put(CalenderController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: ThemeAppbar(
          title: 'Book Appointment',
          ontap: () {
            Get.back();
          },
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 20.w, bottom: 10.h),
                child: Text(
                  'Select Date',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Calender(),
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 20.w, bottom: 10.h),
                child: Text(
                  'Select Hours',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              bookHours(),
              BookingThemeButton(
                title: 'Next',
                ontap: () {
                  Get.to(() => BookPackageScreen());
                },
              ),
              SizedBox(
                height: 25.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding bookHours() {
    return Padding(
      padding:
          EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 10.h),
      child: Container(
          width: double.infinity,
          height: 230.h,
          child: GridView.builder(
            itemCount: calenderController.Hours.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Obx(
                () => InkWell(
                    onTap: () {
                      calenderController.onChangeIndex(index);
                    },
                    child: AppnmtTimeButton(
                      time: calenderController.Hours[index],
                      index: index,
                    )),
              );
            },
          )),
    );
  }

  Padding Calender() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: colors.Logobg.withOpacity(0.1),
              // border: Border.all(width: 2, color: colors.Logobg),
              borderRadius: BorderRadius.circular(25)),
          child: Obx(
            () => TableCalendar(
              pageJumpingEnabled: true,
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: colors.Logobg.withOpacity(0.7),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: colors.Logobg,
                  shape: BoxShape.circle,
                ),
                holidayDecoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                tableBorder: TableBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  leftChevronMargin: EdgeInsets.only(right: 12.w)),
              focusedDay: calenderController.SelectedDate.value,
              firstDay: DateTime.utc(2023, 06, 01),
              lastDay: DateTime.utc(2024, 12, 01),
              availableGestures: AvailableGestures.horizontalSwipe,
              onDaySelected: (selectedDay, focusedDay) {
                calenderController.onDaySelected(selectedDay, focusedDay);
              },
              selectedDayPredicate: (day) =>
                  isSameDay(day, calenderController.SelectedDate.value),
            ),
          ),
        ));
  }
}
