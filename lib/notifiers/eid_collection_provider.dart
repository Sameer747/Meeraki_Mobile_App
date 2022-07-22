// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../services/eid_collection_service.dart';

class EidNotifierProvider extends ChangeNotifier {
  var data;
  Future fetchEidProduct() async {
    data = await EidCollectionService().getProducts();
    notifyListeners();
  }

  getAllFeatures() {
    return data;
  }
}
