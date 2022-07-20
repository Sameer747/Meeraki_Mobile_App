// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/feature_service.dart';

class FeatureNotifierProvider extends ChangeNotifier {
  var data;
  Future fetchFeatureProduct() async {
    data = await FeatureService().getProducts();
    notifyListeners();
  }

  getAllFeatures() {
    return data;
  }
}
