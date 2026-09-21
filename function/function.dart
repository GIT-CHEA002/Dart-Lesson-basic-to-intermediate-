import 'dart:math';

void main() {
  // function is a block of code that use to solve specific problem
  // function are dive into 2 type : built-in and user-define function
  // naming : 1 word use Capitalize , 2 or more words use camelCase
  /**
   * 1. built-in : come with the language or the library
   * 2. user-define : user customize function , use to solve specifc task , like transaction ...
   * return type : 
   * syntax : return type functionName(parametters){statements;}
   */
  Greeting();
  print(addNumber());
  getMessage("Sokchea", "This is my learning chanel");
  print("Sum of 10 and 20 is ${sum(10, 20)}");
  print("Square of 10 is ${square(10)}");
}

void Greeting() {
  print("Hello jojo");
}

void getMessage(String? name, String? message) {
  print("Hello $name \nWelcome! $message");
}

int addNumber() {
  return 10 + 20;
}

int sum(int a, int b) {
  return a + b;
}

int square(int a) {
  return pow(a, 2).toInt();
}
