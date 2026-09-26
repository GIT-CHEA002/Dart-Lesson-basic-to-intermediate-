// import 'package:api/api.dart' as api;
import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  try {
    String? url = "https://dummyjson.com/products/1";
    var response = await http.get(
      Uri.parse(url),
    ); // get the response of the api
    if (response.statusCode == 200) {
      // if response = ok , convert data to the Map object
      Map<String, dynamic> data =
          jsonDecode(response.body) as Map<String, dynamic>;
      data.forEach((key, value) {
        print("$key : $value");
      });
    }
  } catch (error) {
    print(error);
  } finally {
    print("The data recieve");
  }
}
