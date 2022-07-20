// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/models/feature_details_model.dart';
import 'package:meeraki_store/notifiers/feature_detail_services.dart';

class FeatureDetailsNotifier extends ChangeNotifier {
  FeatureDetails? data;
  int _quantity = 1;

  double _price = 0;

  double getPrice() => _price;

  int getQuantity() => _quantity;

  fetchFeaDetails(url) async {
    _quantity = 1;
    _selectedSize = 'Small';
    data = await FeatureDetailSerivce().getDetails(url);
    _price = data!.data[0].calculablePrice.toDouble();
    notifyListeners();
  }

  getData() {
    return data;
  }

  String _selectedSize = "Small";
  void setSelected(String size) {
    _selectedSize = size;
    notifyListeners();
  }

  void increaseQuantity() {
    if (_quantity < 10) {
      _quantity++;
      _price = _price + data!.data[0].calculablePrice.toDouble();
      notifyListeners();
    }
  }

  void decreaseQuantity() {
    if (_quantity >= 2) {
      _quantity--;
      _price = _price - data!.data[0].calculablePrice.toDouble();
      notifyListeners();
    }
  }

  String getSelectedSize() => _selectedSize;
}
