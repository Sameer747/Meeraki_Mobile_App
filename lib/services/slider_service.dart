// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/models/slider_model.dart';

class Sliders {
  Future<Slider> getImagesOfSlider() async {
    try {
      var request =
          http.Request('GET', Uri.parse(Helper.finalBaseURL2 + 'sliders'));

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode >= 400) {
        print(response.statusCode);
        throw ('Error');
      } else {
        print(response.reasonPhrase);
        return sliderFromJson(response.body);
      }
    } catch (e) {
      print(e);
      throw Exception(e);
    }
  }
}
