import 'package:flutter/material.dart';
import 'package:vapidemo/apidemo5/fackstore_modal.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class FackStoreService {
  static final url = "https://fakestoreapi.com/products";
  static Future<List<FackStore>?> FackStoreServiceMrthod() async {
    final response = await http.get(Uri.parse(url));
    List jsonString = convert.jsonDecode(response.body);
    return jsonString.map((e) => FackStore.fromJson(e)).toList();
  }
}
