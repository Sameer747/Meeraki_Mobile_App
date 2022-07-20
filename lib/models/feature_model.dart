// To parse this JSON data, do
//
//     final featureproducts = featureproductsFromJson(jsonString);

import 'dart:convert';

Featureproducts featureproductsFromJson(String str) =>
    Featureproducts.fromJson(json.decode(str));

String featureproductsToJson(Featureproducts data) =>
    json.encode(data.toJson());

class Featureproducts {
  Featureproducts({
    required this.data,
    this.success,
    this.status,
  });

  List<Datum> data;
  bool? success;
  int? status;

  factory Featureproducts.fromJson(Map<String, dynamic> json) =>
      Featureproducts(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success": success,
        "status": status,
      };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.thumbnailImage,
    this.basePrice,
    this.discountPrice,
    this.rating,
    this.sales,
    required this.links,
  });

  int? id;
  String? name;
  String? thumbnailImage;
  String? basePrice;
  String? discountPrice;
  int? rating;
  int? sales;
  Links links;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        thumbnailImage: json["thumbnail_image"],
        basePrice: json["base_price"],
        discountPrice: json["discount_price"],
        rating: json["rating"],
        sales: json["sales"],
        links: Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "thumbnail_image": thumbnailImage,
        "base_price": basePrice,
        "discount_price": discountPrice,
        "rating": rating,
        "sales": sales,
        "links": links.toJson(),
      };
}

class Links {
  Links({
    this.details,
  });

  String? details;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        details: json["details"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
      };
}
