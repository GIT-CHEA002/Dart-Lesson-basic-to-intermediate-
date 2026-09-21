import 'dart:io';

void main() {
  // in dart we learn on how to display data in console :
  // to print the data we use print() methods , and stdout.write() for no indent data output
  // to allowed user input , we use stdin libray of dart:io like
  // stdin.readLineSync(), stdin.readByteSync()
  print("Hello preas jea mjas");
  print("This is output example");
  stdout.write("This is print using stdout library\n");

  int number;
  stdout.write("Enter number =  ");
  number = int.parse(stdin.readLineSync()!);
  print("number = ${number}");
}
