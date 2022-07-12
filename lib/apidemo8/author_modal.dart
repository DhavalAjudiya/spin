// To parse this JSON data, do
//
//     final author = authorFromJson(jsonString);

import 'dart:convert';

Author authorFromJson(String str) => Author.fromJson(json.decode(str));

String authorToJson(Author data) => json.encode(data.toJson());

class Author {
  Author({
    this.quotes,
    this.total,
    this.skip,
    this.limit,
  });

  List<Quote>? quotes;
  int? total;
  int? skip;
  int? limit;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
        quotes: List<Quote>.from(json["quotes"].map((x) => Quote.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "quotes": List<dynamic>.from(quotes!.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
      };
}

class Quote {
  Quote({
    this.id,
    this.quote,
    this.author,
  });

  int? id;
  String? quote;
  String? author;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        id: json["id"],
        quote: json["quote"],
        author: json["author"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quote": quote,
        "author": author,
      };
}
