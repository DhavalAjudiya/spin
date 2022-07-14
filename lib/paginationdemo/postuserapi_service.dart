import 'package:vapidemo/paginationdemo/postuserapi_modal.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class GetUserService {
  static Future<List<PostUserApi>?> getUserServiceMethod(int select) async {
    final url = "https://jsonplaceholder.typicode.com/comments?postId=$select";
    final response = await http.get(Uri.parse(url));
    List jsonString = convert.jsonDecode(response.body);
    return jsonString.map((e) => PostUserApi.fromJson(e)).toList();
  }
}
