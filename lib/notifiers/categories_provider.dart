// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/categories_services.dart';

class CategoriesProvider extends ChangeNotifier {
  var data;
  fetchCategory() async {
    data = await CategoriesService().getCategories();
    notifyListeners();
  }

  getAllCat() {
    return data;
  }
}
