// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/slider_service.dart';

class SlidersProvider extends ChangeNotifier {
  var data;
  fetchSliderData() async {
    data = await Sliders().getImagesOfSlider();
    notifyListeners();
  }

  getAllData() {
    return data;
  }
}
