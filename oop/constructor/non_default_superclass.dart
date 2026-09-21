// **Non-Default Superclass Constructor**
// Calls a **specific constructor of the parent class** using `super()`.
// When a child class needs to initialize the parent class. `Student(...) : super(name)`

class Person {
  final String? name;
  Person(this.name);
  Person.guest() : name = 'Guest';
}

class Employee extends Person {
  final int id;

  // call the constructor explicictly(cuz the base class don't have default constructor)
  Employee(String name, this.id) : super(name);
}

// name super class constructor
class Visitor extends Person {
  Visitor() : super.guest();
}

void main() {
  final e = Employee('sokchea', 007);
  print("${e.id} ${e.name}");
  final v = Visitor();
  print(v.name); // will show the guest text
}
