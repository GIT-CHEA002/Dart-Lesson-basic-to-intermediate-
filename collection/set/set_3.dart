// Part 3 : Conversion and Interation

import 'dart:io';

void main() {
  var set1 = {1, 2, 3, 4, 5, 6, 7};
  print(set1);

  var list1 = set1.toList();
  print(list1);

  print(list1.toSet());

  set1.forEach((ele) => stdout.write("$ele "));
}
