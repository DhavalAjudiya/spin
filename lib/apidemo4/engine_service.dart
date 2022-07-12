import 'package:vapidemo/apidemo4/engine_modal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class EngineService {
  static final url = "https://api.spacexdata.com/v3/rockets";
  static Future<List<EngineApiDemo>?> engineServiceMethod() async {
    final response = await http.get(Uri.parse(url));
    List jasonString = convert.jsonDecode(response.body);
    return jasonString.map((e) => EngineApiDemo.fromJson(e)).toList();
  }
}
