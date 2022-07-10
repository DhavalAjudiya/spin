import 'package:vapidemo/apidemo3/persondetail_modal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PersonDetailService {
  static final url = "https://jsonplaceholder.typicode.com/posts";
  static Future<List<PersonDetail>?> personDetailMethod() async {
    final response = await http.get(Uri.parse(url));
    List jesonString = convert.jsonDecode(response.body);
    return jesonString.map((e) => PersonDetail.fromJson(e)).toList();
  }
}
