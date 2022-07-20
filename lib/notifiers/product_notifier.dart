// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/product_services.dart';

class ProductProvider extends ChangeNotifier {
  var data;
  fetchProducts(url) async {
    data = await ProductService().getProducts(url);
    notifyListeners();
  }

  getPro() {
    return data;
  }
}
