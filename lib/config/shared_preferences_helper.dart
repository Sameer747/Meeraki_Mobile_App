// ignore_for_file: constant_identifier_names, avoid_print

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  removeFromCart(int index) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<String> cartItems = await getCart();
    if (cartItems.isNotEmpty) {
      cartItems.removeRange(6 * index, 6 * index + 6);
      await _prefs.setStringList("cart", cartItems);
    }
  }

  addToCart(String link, String name, String thumbnail, String unitPrice,
      String quantity, String size) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<String> cartItems = await getCart();
    cartItems.addAll([link, name, thumbnail, unitPrice, quantity, size]);
    await _prefs.setStringList("cart", cartItems);
  }

  getCart() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<String>? cartItems = _prefs.getStringList("cart");
    if (cartItems == null) return <String>[];
    return cartItems;
  }

  void setUserRoleInPrefrences(String userrole) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setString(UserPreferences.UserRole.toString(), userrole).then(
          (value) => print(value),
        );
  }

  Future getUserRoleFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value = _prefs.getString(UserPreferences.UserRole.toString());

    print(value);
    return value;
  }

  void setUserAccessTokenInPrefrences(String accessToken) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs
        .setString(UserPreferences.UserAccessToken.toString(), accessToken)
        .then(
          (value) => print(value),
        );
  }

  Future getUserAccessTokenFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value =
        _prefs.getString(UserPreferences.UserAccessToken.toString());

    print(value);
    return value;
  }

  void setUserAvatarOriginalInPrefrences(String avatarOriginal) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs
        .setString(
            UserPreferences.UserAvatarOriginal.toString(), avatarOriginal)
        .then(
          (value) => print(value),
        );
  }

  Future getUserAvatarOriginalFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value =
        _prefs.getString(UserPreferences.UserAvatarOriginal.toString());

    print(value);
    return value;
  }

  void setUserPhoneInPrefrences(String phone) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setString(UserPreferences.UserPhone.toString(), phone).then(
          (value) => print(value),
        );
  }

  Future getUserPhoneFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value = _prefs.getString(UserPreferences.UserPhone.toString());

    print(value);
    return value;
  }

  void setUserLoginRememberInPrefrences(bool userloginremember) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs
        .remove(UserPreferences.UserLoginRemember.toString())
        .then((value) => print(value));

    await _prefs
        .setBool(
            UserPreferences.UserLoginRemember.toString(), userloginremember)
        .then(
          (value) => print(value),
        );
  }

  Future getUserLoginRememberFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    bool? value = _prefs.getBool(UserPreferences.UserLoginRemember.toString());

    print(value);
    return value;
  }

  Future<void> setUserIdInPrefrences(int id) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setInt(UserPreferences.UserId.toString(), id).then(
          (value) => print(value),
        );
  }

  Future getUserIdFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    int? value = _prefs.getInt(UserPreferences.UserId.toString());

    print(value);
    return value;
  }

  void setUserNameInPrefrences(String username) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setString(UserPreferences.UserName.toString(), username).then(
          (value) => print(value),
        );
  }

  Future getUserNameFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value = _prefs.getString(UserPreferences.UserName.toString());

    print(value);
    return value;
  }

  void setUserEmailInPrefrences(String useremail) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs
        .setString(UserPreferences.UserEmail.toString(), useremail)
        .then(
          (value) => print(value),
        );
  }

  Future getUserEmailFromPrefrences() async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value = _prefs.getString(UserPreferences.UserEmail.toString());

    print(value);
    return value;
  }

  void setUserPasswordInPrefrences(String userpassword) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs
        .setString(UserPreferences.UserPassword.toString(), userpassword)
        .then(
          (value) => print(value),
        );
  }
}

enum UserPreferences {
  UserId,
  UserName,
  UserEmail,
  UserPassword,
  UserLoginRemember,
  UserRole,
  UserAccessToken,
  UserAvatarOriginal,
  UserPhone,
  orderId,
  address,
  country,
  city,
  postalCode,
  stateorprovince,
  phone,
  id
}
