/**
 * Dart doesn't let you extend more than one class, but a class can implements many.
 *  You get the contract, not the code, so you must implement every member yourself.
 * Dart : the class auto act as interface class
 */
class Swimmer {
  void swim() => print('Swimming');
}

class Flyer {
  void fly() => print('Flying');
}

class Duck implements Swimmer, Flyer {
  @override
  void fly() => print("The duck is flying");
  @override
  void swim() => print("The duck is swimming");
}

void main() {
  Swimmer swimmer = Swimmer();
  swimmer.swim();
  Flyer flyer = Flyer();
  flyer.fly();
  Duck duck = Duck();
  duck.fly();
  duck.swim();
}
