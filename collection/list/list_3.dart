// Part 3: Properties and checks
void main() {
  var testList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10];
  // testList.clear(); use to clear list
  print(testList.length);

  print(testList.isEmpty);

  print(testList.isNotEmpty);

  print(testList.contains(10));

  print(testList.indexOf(10)); // return first matching index of the list

  print(testList.lastIndexOf(10)); // return the last matching index of list
}
