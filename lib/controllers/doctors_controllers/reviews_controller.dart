import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:medo_app/models/ReviewModel.dart';

class ReviewController extends GetxController {
  RxBool islike = false.obs;
  RxList<dynamic> userList = RxList<dynamic>([]);
  Random random = Random();

  void onTapLike() {
    islike == true;
  }

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
    var time = Random().nextInt(30);
    if (time == 0) {
      return 'Today';
    }
    return time.toString();
  }

  getRandomUserApi() async {
    final response =
        await http.get(Uri.parse('https://randomuser.me/api/?results=2'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      userList = data['results'];

      print('Fetch Completed');
    }
  }
}
