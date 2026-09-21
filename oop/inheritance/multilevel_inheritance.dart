class Animal {
  void eat() => print("The animal is eating food");
}

class Mammal extends Animal {
  String? name;

  Mammal(this.name);

  void walk() => print("The animal named $name is walking");
}

class Dog extends Mammal {
  Dog(String name) : super(name);
}

class Cat extends Mammal {
  String? color;

  Cat(String name, this.color) : super(name);

  void run() => print("The cat named $name with color $color is running");
}

void main() {
  Dog d = Dog("Tola");

  d.eat(); // Dog inherits eat() from Animal
  d.walk(); // Dog inherits walk() from Mammal

  Cat c = Cat("July", "ginger");

  c.eat(); // Cat inherits eat() from Animal
  c.walk(); // Cat inherits walk() from Mammal
  c.run(); // Cat's own method
}

/*
  We see that the eat() method can be inherited
  by multiple subclasses through inheritance.

  Animal
    |
  Mammal
   /   \
 Dog   Cat
*/
