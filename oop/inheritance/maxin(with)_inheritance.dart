/**
 * Mixins give you multiple inheritance of code.
 * This is Dart's answer to "I want to reuse code from several sources."
 * 
 */
mixin Swimmer {
  void swim() => print('Swimming');
}

mixin Flyer {
  void fly() => print('Flying');
}

class Animal {
  void eat() => print('Eating');
}

class Duck extends Animal with Swimmer, Flyer {}

void main() {
  final d = Duck();
  d.eat();
  d.swim();
  d.fly();
}
