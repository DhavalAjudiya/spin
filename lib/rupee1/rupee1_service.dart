import 'dart:convert';

import 'package:vapidemo/rupee1/rupee1_modal.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class RupeeService {
  static final url = "https://price-api.crypto.com/price/v1/exchange/rupee";
  static Future<RupeeModal?> getRupeeData() async {
    final response = await http.get(Uri.parse(url));
    return RupeeModal.fromJson(jsonDecode(response.body));
  }
}
