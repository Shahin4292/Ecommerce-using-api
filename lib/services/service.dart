import 'package:http/http.dart' as http;

import '../model/item_model.dart';

class RemoteService {
  static var client = http.Client();

  static Future<List<Product>?> fetchProduct() async {
    var response =
        await client.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var json = response.body;
      return productFromJson(json);
    } else {
      print("Error response: ${response.body}");
    }
    return null;
  }
}
