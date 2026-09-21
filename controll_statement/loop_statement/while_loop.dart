import 'dart:io';

void main() {
  int result2 = 0;
  int i = 1;
  int length;
  stdout.write("Enter the number of serires : ");
  length = int.parse(stdin.readLineSync()!);
  while (length > 0) {
    result2 += i;
    length--;
    i++;
  }
  print("Result2 = ${result2}");
}
