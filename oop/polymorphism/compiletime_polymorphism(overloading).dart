/**
 * One important point first: Dart does not support traditional method overloading like C# or Java.
 * Instead, Dart commonly uses optional/named parameters to achieve similar behavior.
 * However, technically, this is not method overloading in the traditional OOP sense. It is optional parameter usage.
 */

class Calculator {
  int add(int a, int b, [int? c]) {
    if (c != null) {
      return a + b + c;
    }

    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) {
    return a * b;
  }

  double divide(double a, double b) {
    return a / b;
  }
}

void main() {
  Calculator calculator = Calculator();

  print(calculator.add(10, 20)); // 30
  print(calculator.add(10, 20, 30)); // 60

  print(calculator.subtract(20, 5)); // 15
  print(calculator.multiply(5, 4)); // 20
  print(calculator.divide(20, 4)); // 5.0
}
