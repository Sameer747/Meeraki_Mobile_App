import 'package:flutter/material.dart';

class SignInSignUpDataProvider extends ChangeNotifier {
  bool passwordVisible = false;

  void passwordVisibleFunction() {
    if (passwordVisible == false) {
      passwordVisible = true;
    } else {
      passwordVisible = false;
    }
    notifyListeners();
  }

  bool signIn = true;
  bool register = false;
  void pageChangerSignInSignUp() {
    if (register == false) {
      signIn = false;
      register = true;
    } else if (register == true) {
      signIn = true;
      register = false;
    }
    notifyListeners();
  }

  bool registerPasswordVisible = false;

  void registerPasswordVisibleFunction() {
    if (registerPasswordVisible == false) {
      registerPasswordVisible = true;
    } else {
      registerPasswordVisible = false;
    }
    notifyListeners();
  }

  bool registerRePasswordVisible = false;

  void registerRePasswordVisibleFunction() {
    if (registerRePasswordVisible == false) {
      registerRePasswordVisible = true;
    } else {
      registerRePasswordVisible = false;
    }
    notifyListeners();
  }

  String errorString = "";
  void updateerrorStringFunc(String errorString) {
    this.errorString = errorString;
    notifyListeners();
  }

  bool isGettingDataFromApi = false;
  void isGettingDataFromApiFunc() {
    if (isGettingDataFromApi == false) {
      isGettingDataFromApi = true;
    } else {
      isGettingDataFromApi = false;
    }
    notifyListeners();
  }
}
