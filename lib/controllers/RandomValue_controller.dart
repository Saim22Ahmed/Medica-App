import 'dart:math';

import 'package:get/get.dart';

class RandomController extends GetxController {
  RandomNumbers(attribute) {
    Random random = Random();

    var min = attribute == 'patients' ? 2000 : 5;
    var max = attribute == 'patients' ? 8000 : 15;
    final value = min + random.nextInt(max - min);
    return value.toString();
  }
  // Timings for Doctor Working Hours

  List<String> timings = [
    'Monday to Wednesday, 09.00 AM - 15.00 PM',
    'Monday to Friday, 08.00 AM - 20.00 PM',
    'Monday to Wednesday, 09.30 AM - 12.00 PM',
    'Monday to Friday, 09.30 AM - 14.00 PM',
    'Monday to Saturday, 09.30 AM - 14.00 PM',
    'Monday to Friday, 08.30 AM - 19.00 PM',
  ];

  DoctorTimings() {
    Random random = Random();

    String time = timings[Random().nextInt(timings.length)];
    return time.toString();
  }
}
