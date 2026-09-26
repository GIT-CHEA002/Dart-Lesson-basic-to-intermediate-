import 'dart:convert';

void main() {
  String? jsonStringObject = '''  [
    {
      "name": "John Doe",
      "age": 30,
      "isStudent": false,
      "hobbies": ["reading", "traveling", "coding"],
      "address": {
        "street": "123 Main St",
        "city": "New York",
        "country": "USA"
      }
    },
    {
      "name": "Alice Smith",
      "age": 25,
      "isStudent": true,
      "hobbies": ["music", "drawing"],
      "address": {
        "street": "456 Park Ave",
        "city": "London",
        "country": "UK"
      }
    }
    ]''';
  print(jsonStringObject);
  print("--------------------------");
  print("Type of jsonStringObject: ${jsonStringObject.runtimeType}");
  // convert to dart list as cast the element to map

  // method 1 : use cast methods to cast the element of list as Map
  List<Map<String, dynamic>> objectList = (jsonDecode(jsonStringObject) as List)
      .cast<Map<String, dynamic>>();
  if (objectList is List<Map>) {
    int count = 0;
    objectList.forEach((ele) {
      count += 1;
      ele.forEach((key, value) {
        print("$key : $value");
      });
      print("-----------------");
      print("Number of element : $count");
    });
  }
  print("Type of object list : ${objectList.runtimeType}");
  print("Type of jsonStringObject : ${jsonStringObject.runtimeType}");
  print("-----------------------");
}
