// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  Products({
    required this.data,
    required this.links,
    this.meta,
    this.success,
    this.status,
  });

  List<Datum> data;
  ProductsLinks links;
  Meta? meta;
  bool? success;
  int? status;

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        links: ProductsLinks.fromJson(json["links"]),
        meta: Meta?.fromJson(json["meta"]),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "links": links.toJson(),
        "meta": meta?.toJson(),
        "success": success,
        "status": status,
      };
}

class Datum {
  Datum({
    this.id,
    required this.name,
    required this.thumbnailImage,
    required this.basePrice,
    required this.discountPrice,
    required this.rating,
    required this.sales,
    required this.links,
  });

  int? id;
  String name;
  String thumbnailImage;
  String basePrice;
  String discountPrice;
  int rating;
  int sales;
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

class ProductsLinks {
  ProductsLinks({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String? first;
  String? last;
  dynamic prev;
  dynamic next;

  factory ProductsLinks.fromJson(Map<String, dynamic> json) => ProductsLinks(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "prev": prev,
        "next": next,
      };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
      };
}
