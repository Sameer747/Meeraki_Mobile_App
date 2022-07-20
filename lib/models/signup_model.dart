// To parse this JSON data, do
//
//     final signup = signupFromJson(jsonString);

import 'dart:convert';

Signup signupFromJson(String str) => Signup.fromJson(json.decode(str));

String signupToJson(Signup data) => json.encode(data.toJson());

class Signup {
  Signup({
    required this.result,
    required this.message,
    required this.userId,
  });

  bool result;
  String message;
  int userId;

  factory Signup.fromJson(Map<String, dynamic> json) => Signup(
        result: json["result"],
        message: json["message"],
        userId: json["user_id"],
      );

  Map<String, dynamic> toJson() => {
        "result": result,
        "message": message,
        "user_id": userId,
      };
}
