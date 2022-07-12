// To parse this JSON data, do
//
//     final employeeData = employeeDataFromJson(jsonString);

import 'dart:convert';

EmployeeData employeeDataFromJson(String str) =>
    EmployeeData.fromJson(json.decode(str));

String employeeDataToJson(EmployeeData data) => json.encode(data.toJson());

class EmployeeData {
  EmployeeData({
    this.status,
    this.data,
    this.message,
  });

  String? status;
  List<Datum>? data;
  String? message;

  factory EmployeeData.fromJson(Map<String, dynamic> json) => EmployeeData(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "message": message,
      };
}

class Datum {
  Datum({
    this.id,
    this.employeeName,
    this.employeeSalary,
    this.employeeAge,
    this.profileImage,
  });

  int? id;
  String? employeeName;
  int? employeeSalary;
  int? employeeAge;
  String? profileImage;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        employeeName: json["employee_name"],
        employeeSalary: json["employee_salary"],
        employeeAge: json["employee_age"],
        profileImage: json["profile_image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employee_name": employeeName,
        "employee_salary": employeeSalary,
        "employee_age": employeeAge,
        "profile_image": profileImage,
      };
}
