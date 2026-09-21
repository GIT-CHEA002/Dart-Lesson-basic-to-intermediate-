// Can **control what object is returned** instead of always creating a new instance.
// when to use : For caching, singleton patterns, validation, or returning subclasses.     | `Logger()`

// 1. simple factory constructor
import 'dart:math';

class Logger {
  final String name;
  static final Map<String, Logger> _cache = {};

  Logger._internal(this.name);

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }
}

// 2. use : return subtype based on the input data
abstract class Shape {
  factory Shape(String type) {
    switch (type) {
      case 'circle':
        {
          return Circle();
        }
      case 'square':
        {
          return Square();
        }
      default:
        throw ArgumentError('Unknown Type');
    }
  }
  double Area();
}

// implement class of Shape
class Circle implements Shape {
  @override
  double Area() {
    // TODO: implement Area
    return pi * pow(5, 2);
  }
}

class Square implements Shape {
  @override
  double Area() {
    // TODO: implement Area
    return pow(5, 2).toDouble();
  }
}

// 3. parsing data with json format fatory (commonly use in the mobile dev)

class User {
  final String name;
  final int age;
  User({required this.name, required this.age});
  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json['name'], age: json['age']);
  }
}

void main() {
  final a = Logger('app');
  final b = Logger('app');
  print(
    identical(a, b),
  ); // true, same instance : it will show true if these two instanc are the same

  final shape = new Shape('circle');
  print(shape.Area().toStringAsFixed(2));
  final shape2 = new Shape('square');
  print(shape2.Area());

  // test with json formating
  final user = User.fromJson({'name': 'sokchea', 'age': 21});
  print("Name : ${user.name},age : ${user.age} ");
}
