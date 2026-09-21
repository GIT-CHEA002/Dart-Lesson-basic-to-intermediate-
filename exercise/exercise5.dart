import 'dart:io';

void main() {
  int guess = KeyInt(10, 20);
  print(guess);
}

int KeyInt(int start, int end) {
  int? inputNum;
  do {
    stdout.write("Enter number between start($start) and end($end) value : ");
    inputNum = int.parse(stdin.readLineSync()!);
    if (inputNum < start || inputNum > end) {
      print("Wrong range of number");
      continue;
    } else
      break;
  } while (inputNum < start || inputNum > end);
  return inputNum;
}
