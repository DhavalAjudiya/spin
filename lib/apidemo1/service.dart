import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../apidemo1/modal.dart';

class GetApiService {
  static final url = "https://jsonplaceholder.typicode.com/posts";
  static Future<List<GetApiDemo>?> getApiMethod() async {
    print("-------GetApiService-----0000---------");

    final response = await http.get(
      Uri.parse(url),
    );
    print("-------GetApiService-------111111---------");

    List json1string = convert.jsonDecode(response.body);
    print("-------GetApiService------22222---------");

    return json1string.map((e) => GetApiDemo.fromJson(e)).toList();
  }
}
