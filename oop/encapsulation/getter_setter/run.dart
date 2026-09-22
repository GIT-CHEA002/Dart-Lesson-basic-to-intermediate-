import 'Person.dart';
import 'Rectangle.dart';

void main() {
  /**
   * Dart : allowed us to use setter and getter properties  
   * 1.  with this two props we can access the private fields of the class 
   * 2. getter : return the private data fields 
   * 3. setter : set the value for the private data fields 
   */
  // work with rectangle
  Rectangle rectangle = new Rectangle();
  print(rectangle.Area());
  rectangle.height = 1.2;
  rectangle.width = 1.2;
  print(rectangle.height);
  print(rectangle.width);
  print(rectangle.Area());

  // work with Person

  Person person = Person();
  person.Display();
  person.name = "Sokchea";
  person.Age = 21;
  person.Gender = "Male";
  print(person.Age);
  print(person.Gender);
  print(person.name);
  person.Display();
  // person
  //     .age; // error because the age is private field in other person class files
}
