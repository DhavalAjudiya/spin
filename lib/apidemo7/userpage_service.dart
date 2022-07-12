import 'dart:convert';

import 'package:http/http.dart';
import 'package:vapidemo/apidemo7/userpage_modal.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<UserPage?> userServiceMethod(int select) async {
    final url = "https://reqres.in/api/users?page=$select";

    final response = await http.get(Uri.parse(url));
    return UserPage.fromJson(jsonDecode(response.body));
  }
}
