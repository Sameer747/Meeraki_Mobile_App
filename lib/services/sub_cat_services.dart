// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/models/sub_category_model.dart';

class SubCategoriesService {
  Future<SubCategoriesModel> getSubCat(url) async {
    try {
      var request = http.Request('GET', Uri.parse(url));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return subCategoriesModelFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
