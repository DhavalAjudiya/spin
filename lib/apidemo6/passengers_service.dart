import 'dart:convert';

import 'package:vapidemo/apidemo6/passengers_modal.dart';
import 'package:http/http.dart' as http;

class PassengersService {
  static final url =
      "https://api.instantwebtools.net/v1/passenger?page=0&size=10";
  static Future<Welcome> passengerServiceMethod() async {
    final response = await http.get(Uri.parse(url));
    return Welcome.fromJson(jsonDecode(response.body));
  }
}
