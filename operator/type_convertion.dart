import 'dart:io';

void main() {
  /**
   * type convertion is the process of changing from one datatype to other datatype
   * such as int to float , int to string...
   * it is important when building the real application with user input data 
   * There are 2 type of type conversion 
   * 1. Implicit Conversion (Automatic) : small to big byte data type
   * 2. Explicti Conversion (Manual) : big to small byte data type 
   */
  // auto : convert int to double
  int a = 10;
  print("a = ${a} is ${a.runtimeType}");
  double b = 1.2;
  print("b = $b is ${b.runtimeType}");
  num total = a + b; // auto convert a to double to make the arithmetic
  print("Total = $total is ${total.runtimeType}");

  // manual : (normal and casting)
  String? x = "123";
  print("${x} is ${x.runtimeType}");
  // convert
  int xNumber = int.parse(x); // string to integer
  print("$xNumber is ${xNumber.runtimeType}");

  String? floating = "125.23";
  print("$floating is ${floating.runtimeType}");
  double floating_double = double.parse(floating); // string to double
  print("$floating_double is ${floating_double.runtimeType}");

  int lek = 123;
  String? chars = lek.toString();
  print("$chars is ${chars.runtimeType}");

  // user input example :
  stdout.write("Enter string to parse :");
  String? k = stdin.readLineSync();
  int j = int.parse(k ?? "0");
  print("$j is ${j.runtimeType}");
}
