// redirecting : Redirects one constructor to **another constructor in the same class**.4
//  To reuse initialization logic and avoid duplicate code. `Person.guest() : this("Guest", 0)`

// redirect generative constructor
class Point {
  final double x;
  final double y;
  // generative contructor
  Point(this.x, this.y);
  // redirect to generative contructor
  Point.origin() : this(0, 0);
  Point.square(double value) : this(value, value);
}

abstract class Animal {
  factory Animal.dog() = Dog;
  factory Animal.cat(String name) = Cat;
  String speak();
}
// implement the redireting factory

class Dog implements Animal {
  @override
  String speak() {
    // TODO: implement speak
    return "Woof Woof";
  }
}

class Cat implements Animal {
  final String? name;
  Cat(this.name);
  @override
  String speak() {
    // TODO: implement speak
    return "The cat name ${this.name} says Meow Moew";
  }
}

void main() {
  final p1 = Point.origin();
  final p2 = Point.square(2);
  print("${p1.x}  ${p1.y}");
  print("${p2.x}  ${p2.y}");
  // testing redirecting factory
  final d = Animal.dog();
  print(d.speak());
  final c = Animal.cat('July');
  print(c.speak());
}
