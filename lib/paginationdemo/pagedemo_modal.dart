// To parse this JSON data, do
//
//     final pageDemoModal = pageDemoModalFromJson(jsonString);

import 'dart:convert';

List<PageDemoModal> pageDemoModalFromJson(String str) =>
    List<PageDemoModal>.from(
        json.decode(str).map((x) => PageDemoModal.fromJson(x)));

String pageDemoModalToJson(List<PageDemoModal> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PageDemoModal {
  PageDemoModal({
    this.postId,
    this.id,
    this.name,
    this.email,
    this.body,
  });

  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  factory PageDemoModal.fromJson(Map<String, dynamic> json) => PageDemoModal(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
      };
}
