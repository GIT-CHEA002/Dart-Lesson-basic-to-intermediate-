import 'dart:io';

void main() {
  // print * using loop
  int n;
  stdout.write("Enter number of row : ");
  n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    stdout.write("${i} : ");
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    print("");
  }
}
