import 'package:get/get.dart';

class CalenderController extends GetxController {
  var SelectedDate = DateTime.now().obs;

  void onDaySelected(DateTime day, DateTime FocusedDay) {
    SelectedDate.value = day;
  }
}
