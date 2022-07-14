// To parse this JSON data, do
//
//     final postUserApi = postUserApiFromJson(jsonString);

import 'dart:convert';

List<PostUserApi> postUserApiFromJson(String str) => List<PostUserApi>.from(
    json.decode(str).map((x) => PostUserApi.fromJson(x)));

String postUserApiToJson(List<PostUserApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostUserApi {
  PostUserApi({
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

  factory PostUserApi.fromJson(Map<String, dynamic> json) => PostUserApi(
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
