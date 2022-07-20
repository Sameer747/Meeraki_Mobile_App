// import 'dart:convert';


// import 'package:http/http.dart' as http;
// import 'package:meeraki_store/config/helper.dart';

// class SearchServices {
//   Future<SearchModel> getSearchData(name) async {
//     try {
//       var headers = {'Content-Type': 'application/json'};
//       var request = http.Request(
//           'POST', Uri.parse(Helper.finalBaseURL2 + 'search/product'));
//       request.body = json.encode({"name": "$name"});
//       request.headers.addAll(headers);

//       var streamedResponse = await request.send();
//       var response = await http.Response.fromStream(streamedResponse);

//       if (response.statusCode >= 400) {
//         print(response.statusCode);
//         throw ('Error');
//       } else {
//         print(response.reasonPhrase);
//         // return searchModelFromJson(response.body);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
// }
