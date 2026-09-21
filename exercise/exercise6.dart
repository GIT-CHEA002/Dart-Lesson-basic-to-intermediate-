import 'dart:io';
void main() {
  stdout.write("Enter number of row : ");
  int row = int.parse(stdin.readLineSync()!);
  printStar(row);
}

void printStar(int row) {
  if (row < 0) {
    print("Invalid number of row(must be positive number)");
    return;
  }
  print("Print star with row = $row");
  for (int i = 1; i <= row; i++) {
    stdout.write("$i : ");
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    print("");
  }
}
