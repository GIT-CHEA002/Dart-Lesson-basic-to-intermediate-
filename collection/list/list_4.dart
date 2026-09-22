// Part 4 : Sorting, Reversing, Iterating

import 'dart:io';

void main() {
  var newList = [
    10,
    3,
    30,
    1,
    20,
    8,
    10,
    5,
    30,
    9,
    20,
    4,
    10,
    2,
    30,
    7,
    20,
    6,
    10,
    20,
  ];

  print(newList);
  // newList.shuffle(); suffle the list\

  newList.sort();
  print(newList);

  var copyList = newList.reversed.toList();
  print(copyList);

  newList.forEach((ele) => stdout.write("$ele "));
}
