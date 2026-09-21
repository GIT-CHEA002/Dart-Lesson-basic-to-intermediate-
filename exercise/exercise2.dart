import 'dart:io';

void main() {
  print("Exercise 2 : print pascal triangle");
  stdout.write("Enter number row =  ");
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    // for indent
    for (int j = i; j <= n; j++) {
      stdout.write("  ");
    }

    // left to right
    for (int j = 1; j <= i; j++) {
      stdout.write("${j} ");
    }

    // right to left
    for (int j = i - 1; j >= 1; j -- ) {
      stdout.write("${j} ");
    }
    print(" ");
  }
}
