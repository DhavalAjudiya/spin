// To parse this JSON data, do
//
//     final personDetail = personDetailFromJson(jsonString);

import 'dart:convert';

List<PersonDetail> personDetailFromJson(String str) => List<PersonDetail>.from(
    json.decode(str).map((x) => PersonDetail.fromJson(x)));

String personDetailToJson(List<PersonDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PersonDetail {
  PersonDetail({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory PersonDetail.fromJson(Map<String, dynamic> json) => PersonDetail(
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
