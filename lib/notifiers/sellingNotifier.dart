// ignore_for_file: prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/best_selling_service.dart';

class BestNotifier extends ChangeNotifier {
  var data;

  fetchSellingPro() async {
    data = await BestSellingService().getSellProducts();
    notifyListeners();
  }

  getAllSellPro() {
    return data;
  }
}
