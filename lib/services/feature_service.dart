// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/feature_model.dart';

class FeatureService {
  Future<Featureproducts> getProducts() async {
    try {
      var request = http.Request(
          'GET', Uri.parse(Helper.finalBaseURL2 + 'products/featured'));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return featureproductsFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
