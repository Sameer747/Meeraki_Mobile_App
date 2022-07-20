// To parse this JSON data, do
//
//     final blogsModel = blogsModelFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

BlogsModel blogsModelFromJson(String str) =>
    BlogsModel.fromJson(json.decode(str));

String blogsModelToJson(BlogsModel data) => json.encode(data.toJson());

class BlogsModel {
  BlogsModel({
    required this.data,
    this.success,
    this.status,
  });

  List<Datum> data;
  bool? success;
  int? status;

  factory BlogsModel.fromJson(Map<String, dynamic> json) => BlogsModel(
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
    this.categoryId,
    this.title,
    this.slug,
    this.shortDescription,
    this.longDescription,
    this.banner,
    this.metaTitle,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  String? categoryId;
  String? title;
  String? slug;
  String? shortDescription;
  String? longDescription;
  String? banner;
  String? metaTitle;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        categoryId: json["category_id"],
        title: json["title"],
        slug: json["slug"],
        shortDescription: json["short_description"],
        longDescription: json["long_description"],
        banner: json["banner"],
        metaTitle: json["meta_title"] == null ? null : json["meta_title"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_id": categoryId,
        "title": title,
        "slug": slug,
        "short_description": shortDescription,
        "long_description": longDescription,
        "banner": banner,
        "meta_title": metaTitle == null ? null : metaTitle,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "deleted_at": deletedAt,
      };
}
