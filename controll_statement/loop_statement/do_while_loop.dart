import 'dart:io';

void main() {
  List<String> names = [];
  bool isStop = true;
  do {
    String? name;
    stdout.write("Enter name : ");
    name = stdin.readLineSync();
    names.add(name.toString());
    names.forEach((element) {
      stdout.write("$element  ");
    });
    print("");
    stdout.write("Continue ? (1 / 0) :");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 0) isStop = false;
  } while (isStop);
}
