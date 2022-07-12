import 'dart:convert';

import 'package:vapidemo/apidemo9/userdata_modal.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class UserDataService {
  static final url = "https://dummyjson.com/users";
  static Future<UserData?> userDataService() async {
    final response = await http.get(Uri.parse(url));
    return UserData.fromJson(jsonDecode(response.body));
  }
}
