// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/signup_model.dart';

class SignUp {
  Future<Signup> userSignUp(name, email, phone, password, confrmpass) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request =
          http.Request('POST', Uri.parse(Helper.finalBaseURL2 + 'auth/signup'));
      request.body = json.encode({
        "name": "$name",
        "email": "$email",
        "phone": "$phone",
        "password": "$password",
        "confirm_pass": "$confrmpass"
      });
      request.headers.addAll(headers);

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return signupFromJson(response.body);
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
