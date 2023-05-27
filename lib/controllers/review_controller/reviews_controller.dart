import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:medo_app/models/ReviewModel.dart';

class ReviewController extends GetxController {
  Random random = Random();

  RandomReview() {
    final review = Random().nextInt(5) + 1;
    return review.toString();
  }

  RandomLikes() {
    var min = 60;
    var max = 1000;
    final likes = min + Random().nextInt(max - min);
    return likes.toString();
  }

  RandomReviewTime() {
    final time = Random().nextInt(30);
    if (time == 0) {
      return 'Today';
    }
    return time.toString();
  }
}
