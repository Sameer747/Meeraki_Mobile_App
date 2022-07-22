// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../models/eid_collection_detail_model.dart';
import 'eid_collection_detail_services.dart';

class EidCollectionDetailsNotifier extends ChangeNotifier {
  EidCollectionDetails? data;
  int _quantity = 1;

  double _price = 0;

  double getPrice() => _price;

  int getQuantity() => _quantity;

  fetchEidDetails(url) async {
    _quantity = 1;
    _selectedSize = 'Small';
    data = await EidCollectionDetailSerivce().getDetails(url);
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
