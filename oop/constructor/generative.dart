void main() {
  /**
   * Dart has many type of constructor : are 
   * 1. Generative
   * 2. Default 
   * 3. Name 
   * 4. Constance
   * 5. Factory
   * 6. Redirect
   * 7. Non-Default Superclass Constructor
   * 8. Redirect Factory Constructor
   */

  /**
   * | # | Constructor                            | What it does                                                                                      | When to use it                                                            | Example                             |
| - | -------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ----------------------------------- |
| 1 | **Generative Constructor**             | Creates a **new object/instance** of the class.                                                   | When you want to create and initialize a normal object.                   | `Person("Sokchea", 21)`             |
| 2 | **Default Constructor**                | A **no-argument constructor** automatically provided by Dart if you don't define any constructor. | When the object can be created without parameters.                        | `Person()`                          |
| 3 | **Named Constructor**                  | Gives a class **additional ways to create objects** with different names.                         | When you need multiple initialization options.                            | `Person.guest()`                    |
| 4 | **Const Constructor**                  | Creates an object that can be a **compile-time constant**.                                        | For immutable objects whose values don't change.                          | `const Point(10, 20)`               |
| 5 | **Factory Constructor**                | Can **control what object is returned** instead of always creating a new instance.                | For caching, singleton patterns, validation, or returning subclasses.     | `Logger()`                          |
| 6 | **Redirecting Constructor**            | Redirects one constructor to **another constructor in the same class**.                           | To reuse initialization logic and avoid duplicate code.                   | `Person.guest() : this("Guest", 0)` |
| 7 | **Non-Default Superclass Constructor** | Calls a **specific constructor of the parent class** using `super()`.                             | When a child class needs to initialize the parent class.                  | `Student(...) : super(name)`        |
| 8 | **Redirecting Factory Constructor**    | A factory constructor that redirects object creation to **another class's constructor**.          | When an interface/abstract class should create a specific implementation. | `factory Animal.dog() = Dog`        |

   */
  Car c = new Car("Toyota", 2020);
  c.Display();
}

// Generative constructor : Creates a **new object/instance** of the class.
// When you want to create and initialize a normal object.  
class Car {
  String name = "";
  int year = 2020;
  Car(this.name, this.year);
  void Display() {
    print("Name : $name :Year : $year");
  }
}
