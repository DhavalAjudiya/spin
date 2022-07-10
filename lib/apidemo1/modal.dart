// To parse this JSON data, do
//
//     final getApiDemo = getApiDemoFromJson(jsonString);

import 'dart:convert';

List<GetApiDemo> getApiDemoFromJson(String str) =>
    List<GetApiDemo>.from(json.decode(str).map((x) => GetApiDemo.fromJson(x)));

String getApiDemoToJson(List<GetApiDemo> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetApiDemo {
  GetApiDemo({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory GetApiDemo.fromJson(Map<String, dynamic> json) => GetApiDemo(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
