import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../models/ReviewModel.dart';

class UserController extends GetxController {
  RxBool isLoading = true.obs;
  var users = <User>[].obs;
  RxBool islike = false.obs;

  void onTapLike() {
    islike.value = !islike.value;
  }

  void fetchRandomUsers() async {
    isLoading(true);
    try {
      var response =
          await http.get(Uri.parse('https://randomuser.me/api/?results=20'));
      if (response.statusCode == 200) {
        var data = response.body;
        var parsedData = jsonDecode(data)['results'] as List<dynamic>;
        users(parsedData
            .map((e) => User(
                  name: '${e['name']['first']} ${e['name']['last']}',
                  imageUrl: e['picture']['thumbnail'],
                  email: e['email'],
                ))
            .toList());
      }
    } catch (e) {
      print(e);
    } finally {
      print('Fetch Completed');
      isLoading(false);
    }
  }
}
