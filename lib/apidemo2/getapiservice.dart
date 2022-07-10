import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vapidemo/apidemo2/getapimodal.dart';

class GetApiService {
  static final url =
      "https://api.instantwebtools.net/v1/passenger?page=0&size=10";
  static Future<AirlineApiDemo> getApiMethod() async {
    print("-------GetApiService-----0000---------");

    final response = await http.get(
      Uri.parse(url),
    );
    print("-------GetApiService-------111111---------");

    // List json1string = convert.jsonDecode(response.body);
    print("-------GetApiService------22222---------");
    return AirlineApiDemo.fromJson(json.decode(response.body));
    // return json1string.map((e) => GetApiDemo.fromJson(e)).toList();
  }
}
