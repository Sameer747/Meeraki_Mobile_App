import 'package:flutter/material.dart';
import 'package:meeraki_store/services/login_services.dart';

class LoginProvider extends ChangeNotifier {
  getLoginCredentials(email, password) async {
    var data = Login().loginUser(email, password);
    notifyListeners();
    return data;
  }
}
