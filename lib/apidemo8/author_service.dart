import 'dart:convert';

import 'package:vapidemo/apidemo8/author_modal.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'dart:convert' as convert;

class AuthorService {
  static final url = "https://dummyjson.com/quotes";
  static Future<Author> aurthorServiceMethod() async {
    final response = await http.get(Uri.parse(url));
    //List jasonString = convert.jsonDecode(response.body);
    return Author.fromJson(jsonDecode(response.body));
  }
}
