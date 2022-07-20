// ignore_for_file: avoid_print, dead_code

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/sign_in_service.dart';

class UserSignUp extends ChangeNotifier {
  getuserSignUp(name, email, phone, password, confrmpass) async {
    print("process");
    var data = SignUp().userSignUp(name, email, phone, password, confrmpass);
    print("object");
    notifyListeners();

    return data;
  }
}
