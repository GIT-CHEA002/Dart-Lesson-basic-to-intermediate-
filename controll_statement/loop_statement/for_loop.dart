import 'dart:io';

void main() {
  // loop : are statement that do the code again and again until they meet the break condition
  // example :
  // 1. for loop = specific iteration
  for (int i = 0; i < 10; i++) {
    stdout.write("$i ");
  }
  print("");
  // sum of 1 + 2 + 3 + 4+ ...
  int length;
  stdout.write("Enter the number of serires : ");
  length = int.parse(stdin.readLineSync()!);
  int result = 0;
  for (int i = 1; i <= length; i++) {
    result += i;
  }
  print("The result is : $result");

  // 2. while loop : unkown iteration
  int result2 = 0;
  int i = 1;
  while (length > 0) {
    result2 += i;
    length--;
    i++;
  }
  print("Result2 = ${result2}");

  // do while loop 
}
