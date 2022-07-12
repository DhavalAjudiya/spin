// To parse this JSON data, do
//
//     final rupeeCruptoModal = rupeeCruptoModalFromJson(jsonString);

import 'dart:convert';

RupeeCruptoModal rupeeCruptoModalFromJson(String str) =>
    RupeeCruptoModal.fromJson(json.decode(str));

String rupeeCruptoModalToJson(RupeeCruptoModal data) =>
    json.encode(data.toJson());

class RupeeCruptoModal {
  RupeeCruptoModal({
    this.priceChange,
    this.prices,
    this.usdPriceChange,
  });

  double? priceChange;
  List<List<double>>? prices;
  double? usdPriceChange;

  factory RupeeCruptoModal.fromJson(Map<String, dynamic> json) =>
      RupeeCruptoModal(
        priceChange: json["price_change"].toDouble(),
        prices: List<List<double>>.from(json["prices"]
            .map((x) => List<double>.from(x.map((x) => x.toDouble())))),
        usdPriceChange: json["usd_price_change"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "price_change": priceChange,
        "prices": List<dynamic>.from(
            prices!.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "usd_price_change": usdPriceChange,
      };
}
