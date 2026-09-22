import 'dart:io';

/**
 * Dart : in dart offer you many collection class and their methods that 
 *        allow you to work realy fast with those collection
 */
void main() {
  var number = [10, 20, 30, 40, 50];
  print(number);
  print("================");
  for (int i = 0; i < number.length; i++) {
    stdout.write(" ${number[i]}");
  }
  print("");
  number[0] = 10000;
  print(number);
}
