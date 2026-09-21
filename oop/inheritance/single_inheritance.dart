/**
 * Inheritance is a concept of OOP : Inheritance in Dart lets a class reuse and
 * extend another class using extends. Dart supports single inheritance only, so a class has one superclass.
 * Dart doesn't have as many inheritance types as languages like C++, but it gives you several ways to reuse
 * and share behavior. Here they are. 
 */
class Animal {
  void eat() => print("eating");
}

class Dog extends Animal {
  void bark() => print("The dog is barking");
}

void main() {
  Animal animal = Animal();
  animal.eat();
  Dog dog = Dog();
  dog.bark();
  dog.eat(); // inherit methods from the base class (Animal)
}
