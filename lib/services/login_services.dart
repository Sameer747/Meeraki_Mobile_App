// ignore_for_file: unused_local_variable, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/log_in_api_response.dart';

class Login {
  Future<UserLogin> loginUser(email, password) async {
    try {
      var headers = {'Content-Type': 'application/json'};
      var request =
          http.Request('POST', Uri.parse(Helper.finalBaseURL2 + 'auth/login'));
      request.body = json.encode({"email": "$email", "password": "$password"});
      request.headers.addAll(headers);

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return userLoginFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
