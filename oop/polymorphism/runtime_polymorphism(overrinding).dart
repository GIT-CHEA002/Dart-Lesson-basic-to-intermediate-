/**
 * Polymorphism means "many forms": one interface,
 *  different behavior depending on the actual object.
 *  In Dart it comes in two main flavors: runtime polymorphism (method overriding)
 *  and compile-time-style polymorphism (generics, operator overloading, optional parameters).
 */
// A superclass reference can hold any subclass object, and the overridden method of the actual object runs.

class Animal {
  void speak() => print('Some sound');
}

class Dog extends Animal {
  @override
  void speak() => print('Woof');
}

class Cat extends Animal {
  @override
  void speak() => print('Meow');
}

void main() {
  // one animal class can share the behavior to many sub class
  final animals = <Animal>[Dog(), Cat(), Animal()];
  for (final a in animals) {
    a.speak(); // Woof, Meow, Some sound
  }
}
