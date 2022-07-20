// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meeraki_store/services/blog_service.dart';

class BlogsProvider extends ChangeNotifier {
  var data;
  fetchBlogs() async {
    data = await BlogServies().getBlogs();
    notifyListeners();
  }

  getAllBlogs() {
    return data;
  }
}
