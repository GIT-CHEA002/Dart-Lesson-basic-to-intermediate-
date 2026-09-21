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
  final d = Animal.dog();
  final c = Animal.cat("July");
  print(d.speak());
  print(c.speak());
}
