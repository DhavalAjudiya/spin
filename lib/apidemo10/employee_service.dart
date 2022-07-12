import 'dart:convert';

import 'package:vapidemo/apidemo10/employeeData_modal.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class EmployeeDataService {
  static final url = "https://dummy.restapiexample.com/api/v1/employees";
  static Future<EmployeeData?> employeeDataServiceMethod() async {
    final response = await http.get(Uri.parse(url));
    return EmployeeData.fromJson(jsonDecode(response.body));
  }
}
