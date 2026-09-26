import 'dart:convert';

void main() {
  // json string with nested json data
  String? jsonString = '''
  {
    "name": "John Doe",
    "age": 30,
    "isStudent": false,
    "hobbies": ["reading", "traveling", "coding"],
    "address": {
      "street": "123 Main St",
      "city": "Anytown",
      "country": "USA"
    }
  }
  ''';
  print("Type of jsonString: ${jsonString.runtimeType}");
  // convert json string to map(dart object)
  Map<String, dynamic> JsonMap = jsonDecode(jsonString);
  if (JsonMap is Map<String, dynamic>) {
    // verify if the conversion is successful
    JsonMap.forEach((key, value) {
      print("$key: $value");
    });
  }
  print("Json string successfully converted to Map<String,dynamic>");
  print("Type of JsonMap: ${JsonMap.runtimeType}");
}
