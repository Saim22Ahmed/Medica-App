import 'package:get/get.dart';

class CalenderController extends GetxController {
  var SelectedDate = DateTime.now().obs;

  RxInt SelectedIndex = RxInt(-1);

  void onChangeIndex(index) {
    SelectedIndex.value = index;
  }

  void onDaySelected(DateTime day, DateTime FocusedDay) {
    SelectedDate.value = day;
  }

  RxList Hours = [
    '09:00 AM',
    '09:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 PM',
    '12:30 PM',
    '02:00 PM',
    '02:30 PM',
    '04:00 PM',
    '04:30 PM'
  ].obs;
}
