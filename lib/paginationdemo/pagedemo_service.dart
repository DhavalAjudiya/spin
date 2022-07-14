import 'package:vapidemo/paginationdemo/pagedemo_modal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PageDemoService {
  static Future<List<PageDemoModal>> PageDataService(int select) async {
    final url = "https://jsonplaceholder.typicode.com/comments?postId=$select";
    final response = await http.get(Uri.parse(url));
    List jsonString = convert.jsonDecode(response.body);
    return jsonString.map((e) => PageDemoModal.fromJson(e)).toList();
  }
}
