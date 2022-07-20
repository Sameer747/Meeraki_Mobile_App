// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/sub_cat_services.dart';

class SubCategoriesProvider extends ChangeNotifier {
  var data;
  fetchAllSub(url) async {
    data = await SubCategoriesService().getSubCat(url);
    notifyListeners();
  }

  getAllCategories() {
    return data;
  }
}
