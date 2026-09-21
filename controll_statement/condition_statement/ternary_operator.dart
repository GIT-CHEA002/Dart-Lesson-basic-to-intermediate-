import 'dart:io';

void main() {
  // ternaray operator is the special case of if else statement
  // instead of using if with a single condition
  // use ternary is fast and more reliable then if statement
  int a;
  int b;
  stdout.write("Enter a = ");
  a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter b = ");
  b = int.parse(stdin.readLineSync()!);
  print("Is ${a} > ${b} : ${a > b ? 'True' : 'False'}");
}
