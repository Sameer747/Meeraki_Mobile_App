// To parse this JSON data, do
//
//     final featureDetails = featureDetailsFromJson(jsonString);

import 'dart:convert';

FeatureDetails featureDetailsFromJson(String str) =>
    FeatureDetails.fromJson(json.decode(str));

String featureDetailsToJson(FeatureDetails data) => json.encode(data.toJson());

class FeatureDetails {
  FeatureDetails({
    required this.data,
    required this.success,
    required this.status,
  });

  List<Datum> data;
  bool success;
  int status;

  factory FeatureDetails.fromJson(Map<String, dynamic> json) => FeatureDetails(
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
    required this.id,
    required this.name,
    required this.addedBy,
    required this.sellerId,
    required this.shopId,
    required this.shopName,
    required this.shopLogo,
    required this.photos,
    required this.thumbnailImage,
    required this.tags,
    required this.priceHighLow,
    required this.choiceOptions,
    required this.colors,
    required this.hasDiscount,
    required this.strokedPrice,
    required this.mainPrice,
    required this.calculablePrice,
    required this.currencySymbol,
    required this.currentStock,
    required this.isFeatured,
    required this.unit,
    required this.rating,
    required this.ratingCount,
    required this.earnPoint,
    required this.description,
  });

  int id;
  String name;
  String addedBy;
  int sellerId;
  int shopId;
  String shopName;
  String shopLogo;
  List<String> photos;
  String thumbnailImage;
  List<String> tags;
  String priceHighLow;
  List<ChoiceOption> choiceOptions;
  List<dynamic> colors;
  bool hasDiscount;
  String strokedPrice;
  String mainPrice;
  int calculablePrice;
  String currencySymbol;
  int currentStock;
  String isFeatured;
  String unit;
  int rating;
  int ratingCount;
  int earnPoint;
  String description;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        addedBy: json["added_by"],
        sellerId: json["seller_id"],
        shopId: json["shop_id"],
        shopName: json["shop_name"],
        shopLogo: json["shop_logo"],
        photos: List<String>.from(json["photos"].map((x) => x)),
        thumbnailImage: json["thumbnail_image"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        priceHighLow: json["price_high_low"],
        choiceOptions: List<ChoiceOption>.from(
            json["choice_options"].map((x) => ChoiceOption.fromJson(x))),
        colors: List<dynamic>.from(json["colors"].map((x) => x)),
        hasDiscount: json["has_discount"],
        strokedPrice: json["stroked_price"],
        mainPrice: json["main_price"],
        calculablePrice: json["calculable_price"],
        currencySymbol: json["currency_symbol"],
        currentStock: json["current_stock"],
        isFeatured: json["is_featured"],
        unit: json["unit"],
        rating: json["rating"],
        ratingCount: json["rating_count"],
        earnPoint: json["earn_point"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "added_by": addedBy,
        "seller_id": sellerId,
        "shop_id": shopId,
        "shop_name": shopName,
        "shop_logo": shopLogo,
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "thumbnail_image": thumbnailImage,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "price_high_low": priceHighLow,
        "choice_options":
            List<dynamic>.from(choiceOptions.map((x) => x.toJson())),
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "has_discount": hasDiscount,
        "stroked_price": strokedPrice,
        "main_price": mainPrice,
        "calculable_price": calculablePrice,
        "currency_symbol": currencySymbol,
        "current_stock": currentStock,
        "is_featured": isFeatured,
        "unit": unit,
        "rating": rating,
        "rating_count": ratingCount,
        "earn_point": earnPoint,
        "description": description,
      };
}

class ChoiceOption {
  ChoiceOption({
    required this.name,
    required this.title,
    required this.options,
  });

  String name;
  String title;
  List<String> options;

  factory ChoiceOption.fromJson(Map<String, dynamic> json) => ChoiceOption(
        name: json["name"],
        title: json["title"],
        options: List<String>.from(json["options"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "options": List<dynamic>.from(options.map((x) => x)),
      };
}
