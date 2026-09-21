void main() {
  Car c = new Car();
  // acts like you create a contructor with no params
  c.Display();
}

// Default Constructor :  A **no-argument constructor** automatically provided by Dart if you don't define any constructor.
//  When the object can be created without parameters.`Person()`

class Car {
  String? name = "Unknown";
  int? year = 2020;
  void Display() {
    print("Name : $name , Year : $year");
  }
}
