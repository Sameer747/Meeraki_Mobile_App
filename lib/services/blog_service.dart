// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/blogs_model.dart';

class BlogServies {
  Future<BlogsModel> getBlogs() async {
    try {
      var request =
          http.Request('GET', Uri.parse(Helper.finalBaseURL2 + 'blogs'));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return blogsModelFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
