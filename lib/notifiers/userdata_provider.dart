// ignore_for_file: prefer_final_fields, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meeraki_store/config/shared_preferences_helper.dart';

SharedPreferencesHelper _pref = SharedPreferencesHelper();

class UserData extends ChangeNotifier {
  var _userDetail;
  get userDetail => _userDetail;

  var userNiceName;
  var userEmail;
  late int userId;
  //var userRole;
  var userAccessToken;
  var avatarOriginal;
  var phone;

  void userDetailSet(var userDetail) {
    _userDetail = userDetail;
    userNiceName = userDetail.user.name;
    userEmail = userDetail.user.email;
    userId = userDetail.user.id;
    // userRole = userDetail.user.role.toString();
    userAccessToken = userDetail.accessToken;
    avatarOriginal = userDetail.user.avatarOriginal.toString();
    phone = userDetail.user.phone.toString();
    _pref.setUserIdInPrefrences(_userDetail.user.id);
    _pref.setUserNameInPrefrences(_userDetail.user.name);
    _pref.setUserEmailInPrefrences(_userDetail.user.email);
    // _pref.setUserRoleInPrefrences(_userDetail.user.role.toString());
    _pref.setUserAccessTokenInPrefrences(_userDetail.accessToken);
    _pref.setUserAvatarOriginalInPrefrences(
        _userDetail.user.avatarOriginal.toString());
    _pref.setUserPhoneInPrefrences(_userDetail.user.phone.toString());
    // getUserDataByUserId();
    notifyListeners();
  }

  // Future<void> getUserDataByUserId() async {
  //   var userData = await CustomerDataService().getCustomerData(userId);
  //   userRole = userData.role.toString();
  //   print(userData.role.toString());
  //   _pref.setUserRoleInPrefrences(userData.role.toString());
  //   notifyListeners();
  // }

  Future<void> userDetailSetThroughSharedPreferences() async {
    userId = await _pref.getUserIdFromPrefrences();
    userNiceName = await _pref.getUserNameFromPrefrences();
    userEmail = await _pref.getUserEmailFromPrefrences();
    //  userRole = await _pref.getUserRoleFromPrefrences();
    userAccessToken = await _pref.getUserAccessTokenFromPrefrences();
    avatarOriginal = await _pref.getUserAvatarOriginalFromPrefrences();
    phone = await _pref.getUserPhoneFromPrefrences();
    notifyListeners();
  }

  // void setUserDetailOnRegister(var userDetail) {
  //   userNiceName = userDetail.username;
  //   userEmail = userDetail.email;
  //   userId = userDetail.id;
  //   userRole = userDetail.role.toString();

  //   _pref.setUserIdInPrefrences(userDetail.id);
  //   _pref.setUserNameInPrefrences(userDetail.username);
  //   _pref.setUserEmailInPrefrences(userDetail.email);
  //   _pref.setUserRoleInPrefrences(userDetail.role.toString());
  //   _pref.setUserAccessTokenInPrefrences(userDetail.accessToken);
  //   print(userDetail.role);

  //   notifyListeners();
  // }
}
