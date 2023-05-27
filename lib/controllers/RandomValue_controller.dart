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
  // Reviews
  List<String> ReviewText = [
    'Excellent doctor! Very knowledgeable and compassionate. Highly recommended.',
    "I've been seeing this doctor for years and have always had a positive experience. The staff is friendly and professional, and the doctor really takes the time to listen to my concerns.",
    'I had a great experience with this doctor. They were very thorough in their examination and diagnosis, and made me feel comfortable throughout the whole process.',
    'This doctor is amazing! They truly care about their patients and go above and beyond to provide the best care possible.',
    '"I would highly recommend this doctor to anyone looking for a caring and knowledgeable healthcare provider. They really take the time to get to know their patients and provide personalized care.',
    'Great doctor! Very knowledgeable and caring. Highly recommended!'
        'Excellent care! The doctor was thorough and took time to answer all my questions.'
        "Fantastic experience! The doctor was friendly, professional, and put me at ease."
        "Top-notch physician! I appreciate the attention to detail and personalized care."
  ];

  DoctorTimings() {
    Random random = Random();

    String time = timings[Random().nextInt(timings.length)];
    return time.toString();
  }

  RandomReviewText() {
    Random random = Random();

    String text = ReviewText[Random().nextInt(ReviewText.length)];
    return text.toString();
  }
}
