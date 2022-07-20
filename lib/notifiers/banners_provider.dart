// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/banner_services.dart';

class BannersProvider extends ChangeNotifier {
  var data;
  fetchAllBan() async {
    data = await BannerServices().getAllBanners();
    notifyListeners();
  }

  getAllBan() {
    return data;
  }
}
