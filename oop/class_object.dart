void main() {
  // OOP : is the concept of using class and object to build a flexible program
  // The concept of OPP is APIE(Abstract, Polymorphism, Inheritance,Encapsulations)
  Person p = new Person();
  p.Display();
  p.name = "Sokchea";
  p.address = "Kien Svay";
  p.gender = "male";
  p.age = 20;
  p.Display();

  Book b = new Book("Renegade Immortal", 2000.45);
  b.Display();
}

/**
 * In class can has field, property, event , methods
 */
class Person {
  //
  String? name;
  String? address;
  String? gender;
  int age = 0;
  void Display() {
    print("Hello : $name $address $gender , Age = $age");
  }
}

// use this keyword to refer to current object of the class
class Book {
  String? title;
  double? price;
  Book(String title, double price) {
    this.title =
        title; // this point to title of the current class not the param
    this.price = price;
  }
  void Display() {
    print("Title : $title, Price : $price\$");
  }
}
