void main() {
  Person per = new Person("guest", "Sokchea", 20);
  // calling default constructor
  per.Display();

  Person per1 = new Person.guest();
  // calling constructor name : guest
  per1.Display();
  Person per2 = new Person.member("VIP", "Ah Smos", 21);
  // calling constructor name : member
  per2.Display();
}

// Name Constructor : Gives a class **additional ways to create objects** with different names.
// When you need multiple initialization options.
class Person {
  String? type = "unknown";
  String? name;
  int? age;
  Person(this.type, this.name, this.age);
  // Name (Guest) : Constructor (default value)
  Person.guest() {
    this.name = "";
    this.type = "guest";
    this.age = 0;
  }
  Person.member(String? type, String? name, int? age) {
    this.type = type;
    this.name = name;
    this.age = age;
  }
  void Display() {
    print("Type : $type");
    print("Name : $name");
    print("Age : $age");
    print("====================");
  }
}
