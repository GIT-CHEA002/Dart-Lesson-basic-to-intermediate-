class Animal {
  void eat() => print("Animal is eating");
}

class Dog extends Animal {
  void bark() => print("The dog is barking");
}

class Cat extends Animal {
  void meow() => print("The cat say meow");
}

void main() {
  final animal = Animal();
  animal.eat();
  final dog = Dog();
  dog.eat();
  dog.bark();
  final cat = Cat();
  cat.eat();
  cat.meow();
}

/**
 * One super class can be inherited by many sub class
 */
