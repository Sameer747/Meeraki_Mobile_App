// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/models/feature_details_model.dart';

class FeatureDetailSerivce {
  Future<FeatureDetails> getDetails(url) async {
    try {
      var request = http.Request('GET', Uri.parse("$url"));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return featureDetailsFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
