// To parse this JSON data, do
//
//     final rupeeModal = rupeeModalFromJson(jsonString);

import 'dart:convert';

RupeeModal rupeeModalFromJson(String str) =>
    RupeeModal.fromJson(json.decode(str));

String rupeeModalToJson(RupeeModal data) => json.encode(data.toJson());

class RupeeModal {
  RupeeModal({
    this.slug,
    this.symbol,
    this.fiat,
    this.crypto,
    this.updateTime,
  });

  String? slug;
  String? symbol;
  FiatModel? fiat;
  Crypto? crypto;
  int? updateTime;

  factory RupeeModal.fromJson(Map<String, dynamic> json) => RupeeModal(
        slug: json["slug"],
        symbol: json["symbol"],
        fiat: FiatModel.fromJson(json["fiat"]),
        crypto: Crypto.fromJson(json["crypto"]),
        updateTime: json["update_time"],
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "symbol": symbol,
        "fiat": fiat?.toJson(),
        "crypto": crypto?.toJson(),
        "update_time": updateTime,
      };
}

class FiatModel {
  FiatModel({
    this.usd,
    this.gbp,
    this.eur,
    this.sgd,
    this.aud,
    this.cad,
    this.hkd,
    this.krw,
    this.cny,
  });

  double? usd;
  double? gbp;
  double? eur;
  double? sgd;
  double? aud;
  double? cad;
  double? hkd;
  double? krw;
  double? cny;
  factory FiatModel.fromJson(Map<String, dynamic> json) => FiatModel(
        usd: json["usd"].toDouble(),
        gbp: json["gbp"].toDouble(),
        eur: json["eur"].toDouble(),
        sgd: json["sgd"].toDouble(),
        aud: json["aud"].toDouble(),
        cny: json["cny"].toDouble(),
        cad: json["cad"].toDouble(),
        hkd: json["hkd"].toDouble(),
        krw: json["krw"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "usd": usd,
        "gbp": gbp,
        "eur": eur,
        "sgd": sgd,
        "aud": aud,
        "cny": cny,
        "cad": cad,
        "hkd": hkd,
        "krw": krw,
      };
}

class Crypto {
  Crypto({
    this.btc,
    this.eth,
    this.cro,
  });

  double? btc;
  double? eth;
  double? cro;

  factory Crypto.fromJson(Map<String, dynamic> json) => Crypto(
        btc: json["btc"].toDouble(),
        eth: json["eth"].toDouble(),
        cro: json["cro"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "btc": btc,
        "eth": eth,
        "cro": cro,
      };
}
