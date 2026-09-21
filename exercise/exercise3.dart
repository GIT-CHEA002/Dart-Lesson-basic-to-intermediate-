import 'dart:io';

void main() {
  int number;
  stdout.write("Input n = ");
  number = int.parse(stdin.readLineSync()!);
  // convert number to List of String
  List<String> listOfStringNumber = number.toString().split("");
  print("List of string number : ${listOfStringNumber}");
  Map<String, String> numberString = {
    "0": "Zero",
    "1": "One",
    "2": "Two",
    "3": "Three",
    "4": "Four",
    "5": "Five",
    "6": "Six",
    "7": "Seven",
    "8": "Eight",
    "9": "Nine",
  };
  String? stringWords = listOfStringNumber
      .map((element) => numberString[element] ?? '')
      .join('');
  print("String of list number after convert : ${stringWords}");
}
