// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/config/helper.dart';

import '../models/eid_collection_model.dart';

class EidCollectionService {
  Future<Eid_collectionproducts> getProducts() async {
    try {
      var request = http.Request(
          'GET', Uri.parse(Helper.finalBaseURL2 + 'eid_collection/product'));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return Eid_collectionproductsFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
