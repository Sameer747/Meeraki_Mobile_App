// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/models/product_model.dart';

class ProductService {
  Future<Products> getProducts(url) async {
    try {
      var request = http.Request('GET', Uri.parse(url));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return productsFromJson(response.body);
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
